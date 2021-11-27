class AddIconToAllergens < ActiveRecord::Migration[6.0]
  def change
    add_column :allergens, :icon_url, :text
  end
end
