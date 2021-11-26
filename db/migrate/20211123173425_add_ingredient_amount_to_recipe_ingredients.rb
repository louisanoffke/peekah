class AddIngredientAmountToRecipeIngredients < ActiveRecord::Migration[6.0]
  def change
    add_column :recipe_ingredients, :ingredient_amount, :decimal, precision: 6, scale: 2, null: false
  end
end
