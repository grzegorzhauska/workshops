module UserHelper

  def get_last_reviews
    Review.all.order('created_at desc').take(5)
  end
end
