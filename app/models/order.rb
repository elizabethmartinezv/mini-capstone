class Order < ApplicationRecord
  belongs_to :user
  has_many :products, through: :carted_products
  has_many :carted_products
end
