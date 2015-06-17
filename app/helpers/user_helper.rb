module UserHelper

  def get_last_reviews(user)
    Review.where(user: user).order('created_at desc').take(5)
  end

  def product_count
    Product.count
  end
end
