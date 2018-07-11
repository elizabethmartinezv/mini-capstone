class Order < ApplicationRecord
  validates :product_id, presence: true
  validates :quantity, presence: true

  belongs_to :user
  belongs_to :product
end
