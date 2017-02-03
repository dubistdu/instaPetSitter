module RatingsHelper
  def star_rating(star)
    if star.nil? || star <= 0
      "NA"
    else
      "⭐" * [star,5].min
    end
  end
end
