class UserSerializer < ActiveModel::Serializer
  attributes :id

  has_many :products, through: :user_products
end
