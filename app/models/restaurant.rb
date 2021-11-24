class Restaurant < ApplicationRecord
  # Validations
  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :opentable_link, presence: true
  validates :deliveroo_link, presence: true
  validates :justeat_link, presence: true

  # Associations
  has_many :dishes
  has_many :users
end
