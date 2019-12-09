class CreateTypeRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :type_restaurants do |t|
      t.string :name

      t.timestamps
    end
  end
end
