class Recipe < ApplicationRecord
  belongs_to :user
  validates :name, presence: true

  has_many :recipe_ingredients, dependent: :destroy
  has_many :ingredients, through: :recipe_ingredients
  has_many :dishes
  has_many :restaurants, through: :dishes

  def calculate_recipe_calories
    recipe_calories = 0
    self.recipe_ingredients.each do |ri|
      recipe_calories += (ri.ingredient_amount * ri.ingredient.calorie_content / 100)
    end
    recipe_calories
  end
end
