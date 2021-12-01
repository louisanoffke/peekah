class Ingredient < ApplicationRecord
  validates :name, presence: true
  validates :calorie_content, presence: true, numericality: true

  has_many :recipes, through: :recipe_ingredients

  def total_calories
    puts "about to calculate total calories for #{self.name}:"

    protein_cals = self.protein_content.to_i * 4.0
    carb_cals = self.carb_content.to_i * 3.9
    fat_cals = self.fat_content.to_i * 9.0

    self.calorie_content = (protein_cals + carb_cals + fat_cals)
  end

  def identify_allergens
    allergens = Allergen.search_by_name_and_note(self.name)
    self.update(is_allergen: true) unless allergens.empty?
    allergens unless allergens.empty?
  end
end
