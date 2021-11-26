class Dish < ApplicationRecord
  belongs_to :recipe
  belongs_to :restaurant
  validates :price, :restaurant_id, :is_available, :recipe_id, :description, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 1,
                                    message: 'Price must be greater than £0' }
  validates :restaurant, uniqueness: { scope: :recipe,
                                       message: 'Dish already exists in that restaurant' }
end
