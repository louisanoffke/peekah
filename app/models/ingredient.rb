class Ingredient < ApplicationRecord
  validates :name, presence: true
  validates :calorie_content, presence: true, numericality: true

  has_many :recipes, through: :recipe_ingredients

  def total_calories
    puts "about to calculate total calories for #{self.name}:"

    protein_cals = self.protein_content.to_f * 4
    carb_cals = self.carb_content.to_f * 4
    fat_cals = self.fat_content.to_f * 9

    self.calorie_content = protein_cals + carb_cals + fat_cals
  end
end
