class Ingredient < ApplicationRecord
  validates :name, presence: true
  validates :calorie_content, presence: true, numericality: true

  has_many :recipes, through: :recipe_ingredients
end
