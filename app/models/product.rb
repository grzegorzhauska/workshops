class Product < ActiveRecord::Base
  validates :title, format: { with: /\A[a-zA-Z]+\z/,
    message: "Only letters allowed" }
  validates :description, presence: true

  belongs_to :category
  belongs_to :user
  has_many :reviews
end
