class Order < ApplicationRecord
  belongs_to :shop
  belongs_to :user
  has_many :order_product_relationships
end
