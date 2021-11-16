class Product < ApplicationRecord
  belongs_to :shop
  has_many :order_product_relationships
  has_many_attached :photos

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :quantity, presence: true
  validates :supplier_country, presence: true

  validates :calories, presence: true
  validates :shop, presence: true
end
