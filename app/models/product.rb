class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true 
  validates :price, numericality: { greater_than: 0 }
  validates :description, length: { in: 10..500 }

  def discounted?
    price < 200
  end

  def tax
    price * 0.09
  end

  def total
    tax + price
  end

  # The product belongs the supplier
  def supplier
    Supplier.find_by(id: supplier_id)
  end

  # The product has many images
  def images
    Image.where(product_id: id)
  end

  def image_urls
    images.map { |image| image[:url] }
  end
end
