class Order < ApplicationRecord
  validates :product_id, presence: true
  validates :quantity, presence: true

  belongs_to :user
  has_many :products, through: :carted_products
  has_many :carted_products
end
