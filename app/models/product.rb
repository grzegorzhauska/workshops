class Product < ActiveRecord::Base
  validates :title, format: { with: /\A[a-zA-Z]+\z/,
    message: "Only letters allowed" }, presence: true
  validates :description, presence: true
  validates :price, :numericality => true,
    :format => { :with => /A\d{1,4}(\.\d{0,2})?Z/ }

  def average_rating
    result = 0
    reviews.each {
      | r | result += r.rating
    }
    result / reviews.length

    binding.pry
  end

  belongs_to :category
  belongs_to :user
  has_many :reviews
end
