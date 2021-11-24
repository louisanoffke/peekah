class Restaurant < ApplicationRecord
  # Validations
  validates :name, presence: true, length: { minimum: 2 }
  validates :address, presence: true, length: { minimum: 10 }
  validates :description, presence: true, length: { minimum: 20 }

  # Associations
  has_many :dishes
  has_many :users
end
