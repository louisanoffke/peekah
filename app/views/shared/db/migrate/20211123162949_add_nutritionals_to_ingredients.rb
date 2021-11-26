class AddNutritionalsToIngredients < ActiveRecord::Migration[6.0]
  def change
    add_column :ingredients, :calorie_content, :decimal, precision: 6, scale: 2, null: false
    add_column :ingredients, :carb_content, :decimal, precision: 6, scale: 2
    add_column :ingredients, :protein_content, :decimal, precision: 6, scale: 2
    add_column :ingredients, :fat_content, :decimal, precision: 6, scale: 2
    add_column :ingredients, :source, :string
    add_column :ingredients, :scr_url, :string
  end
end
