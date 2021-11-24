class Dish < ApplicationRecord
  belongs_to :recipe
  validates :price, :restaurant_id, :is_available, :recipe_id, :description, presence: true
end
