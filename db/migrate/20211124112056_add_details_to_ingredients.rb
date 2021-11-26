class AddDetailsToIngredients < ActiveRecord::Migration[6.0]
  def change
    add_column :ingredients, :origin, :string
    add_column :ingredients, :is_allergen, :boolean
    add_column :ingredients, :contains_allergen, :boolean
  end
end
