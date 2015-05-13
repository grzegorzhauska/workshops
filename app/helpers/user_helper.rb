module UserHelper

  def get_last_reviews
    Review.all.order('created_at desc').take(5)
  end

  def product_count
    Product.count
  end
end
