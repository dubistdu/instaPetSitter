class Photo < ApplicationRecord
  belongs_to :user
  belongs_to :sitter
  attachment :image
end
