class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_many :orders, dependent: :destroy
  has_one_attached :photo

  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :phone_number, presence: true
  # validates :address, presence: true
end
