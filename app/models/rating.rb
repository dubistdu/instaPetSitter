class Rating < ApplicationRecord
  belongs_to :user
  RATINGS = [["", 0],["⭐", 1],["⭐⭐", 2],["⭐⭐⭐", 3],["⭐⭐⭐⭐", 4],["⭐⭐⭐⭐⭐", 5]]
end
