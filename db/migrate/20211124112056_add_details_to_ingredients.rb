class AddDetailsToIngredients < ActiveRecord::Migration[6.0]
  def change
    add_column :ingredients, :origin, :string
    add_column :ingredients, :is_allergen, :boolean
  end
end
