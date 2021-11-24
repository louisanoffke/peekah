class CreateDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :dishes do |t|
      t.float :price
      t.boolean :is_available
      t.string :description
      t.references :restaurant, null: false, foreign_key: true
      t.references :recipe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
