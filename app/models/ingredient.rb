class Ingredient < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :calorie_content, presence: true, numericality: true
  validate :scr_url, uniqueness: true

  has_many :recipes, through: :recipe_ingredients
end
