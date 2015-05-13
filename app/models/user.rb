class User < ActiveRecord::Base

  validates :lastname, presence: true, allow_blank: false
  validates :firstname, presence: true, allow_blank: false
  validates :email, presence: true, allow_blank: false


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :reviews
  has_many :products

  def admin?
    admin
  end

end
