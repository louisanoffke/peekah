class AddNameAndRestaurantToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, name: :string, null: false
    add_reference :users, :restaurant, foreign_key: true
  end
end
