class Sitter < ApplicationRecord
  has_many :photos
  has_many :pets
  has_many :favorites
  has_many :ratings
  attachment :picture
end
