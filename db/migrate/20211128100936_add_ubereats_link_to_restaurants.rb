class AddUbereatsLinkToRestaurants < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :ubereats_link, :text
  end
end
