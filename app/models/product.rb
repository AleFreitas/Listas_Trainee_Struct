class Product < ApplicationRecord
  belongs_to :category
  validates :name, uniqueness: true
  validates :name, :description, :price, :category_id, presence: true
end
