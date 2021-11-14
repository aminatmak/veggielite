class Shop < ApplicationRecord
  has_many :products, dependent: :destroy
  has_many :orders, dependent: :destroy
  has_many :orders_as_owner, through: :orders, source: :orders

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :name, presence: true
  validates :phone_number, presence: true
  validates :address, presence: true
  validates :email, presence: true
end
