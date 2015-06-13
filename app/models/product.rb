class Product < ActiveRecord::Base
  validates :title, format: { with: /\A[a-zA-Z]+\z/,
    message: "Only letters allowed" }, presence: true
  validates :description, presence: true
  validates :price, presence: true, :format => { :with => /\A\d{1,4}(\.\d{0,2})?\z/ }

  def average_rating
    ratings = reviews.map(&:rating)
    ratings.inject(:+) / ratings.length
  end

  belongs_to :category
  belongs_to :user
  has_many :reviews
end
