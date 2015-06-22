module UserHelper

  def get_last_reviews(user)
    Review.where(user: user).last(5)
  end

  def product_count
    Product.count
  end
end
