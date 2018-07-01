class Product < ApplicationRecord
  def discounted?
    price < 200
  end

  def tax
    price * 0.09
  end

  def total
    tax + price
  end
end
