class Product < ApplicationRecord
  belongs_to :shop
  has_many :order_product_relationships
  has_many_attached :photos

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :quantity, presence: true
  validates :supplier_country, presence: true
  validates :address, presence: true

  CATEGORIES = ["Gluten free", "Dairy free", "Sugar free",
                "Vegan", "Vegetarian", "Pescetarian", "Organic"]
  validates :category, inclusion: { in: CATEGORIES }

  MACROS = ["Fat", "Protein", "Carb"]
  validates :macros, inclusion: { in: MACROS }

  validates :calories, presence: true
  validates :shop_name, presence: true
end
