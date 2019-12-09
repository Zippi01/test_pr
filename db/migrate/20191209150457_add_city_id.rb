class AddCityId < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :city_id, :integer
  end
end
