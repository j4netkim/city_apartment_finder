class AddBuildingIdToApartments < ActiveRecord::Migration[6.0]
  def change
    add_column :apartments, :building_id, :integer
  end
end
