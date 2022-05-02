class Product < ApplicationRecord
  belongs_to :category
  has_many :user_products, dependent: :destroy
  has_many :users, through: :user_products
  validates :name, uniqueness: true
  validates :name, :description, :price, :category_id, presence: true
end
