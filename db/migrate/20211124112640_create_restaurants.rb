class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :address
      t.text :description
      t.text :opentable_link
      t.text :deliveroo_link
      t.text :justeat_link

      t.timestamps
    end
  end
end
