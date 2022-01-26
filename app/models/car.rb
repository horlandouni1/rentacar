class Car < ApplicationRecord
  has_many :bookings
  belongs_to :user
  has_many_attached :photos

  validates :model, presence: true
  validates :plate, presence: true
  validates :brand, presence: true
  validates :price, presence: true
  validates :year, presence: true
  validates :color, presence: true
end
