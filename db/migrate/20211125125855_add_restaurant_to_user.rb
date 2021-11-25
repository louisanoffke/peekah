class AddRestaurantToUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :restaurant, null: false, foreign_key: true
  end
end
