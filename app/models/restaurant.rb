class Restaurant < ApplicationRecord
  # Associations
  has_many :dishes
  has_many :users
  # Geocoding
  geocoded_by :address
  before_validation :geocode, if: :will_save_change_to_address?
  # Validations
  validates :name, presence: true, length: { minimum: 2 }
  validates :address, presence: true, length: { minimum: 6 }
  validates :description, presence: true, length: { minimum: 10 }
  validates :latitude, :longitude, presence: true
end
