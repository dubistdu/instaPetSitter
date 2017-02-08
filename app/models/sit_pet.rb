class SitPet < ApplicationRecord
  belongs_to :user, required: false
end
