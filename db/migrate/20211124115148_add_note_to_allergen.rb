class AddNoteToAllergen < ActiveRecord::Migration[6.0]
  def change
    add_column :allergens, :note, :text
  end
end
