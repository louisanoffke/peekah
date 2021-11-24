class Dish < ApplicationRecord
  belongs_to :recipe
  belongs_to :restaurant
  validates :price, :restaurant_id, :is_available, :recipe_id, :description, presence: true
end
