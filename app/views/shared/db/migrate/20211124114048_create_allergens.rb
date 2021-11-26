class CreateAllergens < ActiveRecord::Migration[6.0]
  def change
    create_table :allergens do |t|
      t.string :name

      t.timestamps
    end
  end
end
