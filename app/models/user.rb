class User < ApplicationRecord

  acts_as_token_authenticatable

  has_many :user_products, dependent: :destroy
  has_many :products, through: :user_products
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
