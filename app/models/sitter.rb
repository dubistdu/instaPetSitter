class Sitter < ApplicationRecord
  has_many :photos
  has_many :pets
  has_many :sit_pets
  has_many :favorites
  has_many :ratings
  attachment :picture
  accepts_nested_attributes_for :pets
  accepts_nested_attributes_for :sit_pets
end
