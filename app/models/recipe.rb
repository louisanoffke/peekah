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
      recipe_calories += (ri.ingredient_amount * ri.ingredient.total_calories / 100)
    end
    recipe_calories.to_i
  end

  def calculate_protein_content
    protein = 0
    self.recipe_ingredients.each do |ri|
      protein += (ri.ingredient_amount * ri.ingredient.protein_content.to_i / 100)
    end
    protein
  end

  def calculate_carb_content
    carbs = 0
    self.recipe_ingredients.each do |ri|
      carbs += (ri.ingredient_amount * ri.ingredient.carb_content.to_i / 100)
    end
    carbs
  end

  def calculate_fat_content
    fat = 0
    self.recipe_ingredients.each do |ri|
      fat += (ri.ingredient_amount * ri.ingredient.fat_content.to_i / 100)
    end
    fat
  end
end
