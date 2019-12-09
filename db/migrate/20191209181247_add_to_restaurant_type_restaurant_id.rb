class AddToRestaurantTypeRestaurantId < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :type_restaurant_id, :integer
  end
end
