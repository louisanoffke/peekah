class Ingredient < ApplicationRecord
  validates :name, presence: true
  validates :calorie_content, presence: true, numericality: true

  has_many :recipes, through: :recipe_ingredients

  def total_calories
    protein_cals = :protein_content * 4
    carb_cals = :carb_content * 4
    fat_cals = :fat_content * 9

    protein_cals * carb_cals * fat_cals
  end
end
