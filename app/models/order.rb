class Order < ApplicationRecord
  belongs_to :shop
  belongs_to :user
  belongs_to :product
  has_many :order_product_relationships

  monetize :amount_cents
end
