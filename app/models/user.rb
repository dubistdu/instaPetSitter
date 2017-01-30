class User < ApplicationRecord
  has_many :sitters, through: :favorites
  has_many :photos
  has_many :pets
  has_many :ratings
  attachment :picture
  accepts_nested_attributes_for :pets
end
