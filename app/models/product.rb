class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true 
  validates :price, numericality: { greater_than: 0 }
  validates :description, length: { in: 10..500 }

  belongs_to :supplier
  has_many :images
  has_many :orders
  
  def discounted?
    price < 200
  end

  def tax
    price * 0.09
  end

  def total
    tax + price
  end

  def image_urls
    images.map { |image| image[:url] }
  end
end
