class Restaurant < ApplicationRecord
  # Validations
  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true

  # Associations
  has_many :dishes
  has_many :users
end
