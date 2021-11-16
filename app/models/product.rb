class Product < ApplicationRecord
  belongs_to :shop
  has_many :order_product_relationships
  has_many_attached :photos

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :quantity, presence: true
  validates :supplier_country, presence: true
  validates :categories, inclusion: { in: %w(Gluten free Dairy free Sugar free Vegan Vegetarian Pescetarian Organic) }
  validates :calories, presence: true
end

# CATEGORIES = ["Gluten free", "Dairy free", "Sugar free",
#               "Vegan", "Vegetarian", "Pescetarian", "Organic"]
# validates :categories, inclusion: { in: CATEGORIES }
