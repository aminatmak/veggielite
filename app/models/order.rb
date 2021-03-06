class Order < ApplicationRecord
  belongs_to :user
  has_many :order_product_relationships, dependent: :destroy
  has_many :products, through: :order_product_relationships

  monetize :amount_cents
end
