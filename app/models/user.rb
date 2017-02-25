class User < ApplicationRecord

  has_many :sitters, through: :favorites
  has_many :photos
  has_many :pets
  has_many :sit_pets
  has_many :favorites
  has_many :ratings
  attachment :picture
  accepts_nested_attributes_for :sit_pets

  geocoded_by :full_street_address   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates

  def full_street_address
    [address, city, state, zip].join(", ")
  end

  # Factory method to create a user from some omniauth data
  # Omniauth will use this to build a *NEW* user for us
  def self.from_omniauth(authentication_data)
    user = User.where(provider: authentication_data['provider'],
                      uid: authentication_data['uid']).first_or_create

    Rails.logger.debug "The user is #{user.inspect}"

    user.name         = authentication_data.info.name
    user.nickname     = authentication_data.info.nickname
    user.access_token = authentication_data.info.access_token

    user.save!

    Rails.logger.debug "After saving, the user is #{user.inspect}"

    return user
  end
  def self.nearby(latitude, longitude)
    User.near([latitude, longitude], 40)
  end

  def self.categorize(sitters)
    dog_sitters = sitters.includes(:sit_pets).where("sit_pets.pet_kind" => "dog").distinct
    cat_sitters = sitters.includes(:sit_pets).where("sit_pets.pet_kind" => "cat").distinct
    other_sitters = sitters.includes(:sit_pets).where("sit_pets.pet_kind" => "other").distinct
    multi_sitters = dog_sitters & cat_sitters & other_sitters

    return [dog_sitters, cat_sitters, other_sitters, multi_sitters]
  end
end
