class RemoveApartmentIdFromBuildings < ActiveRecord::Migration[6.0]
  def change
    remove_column :buildings, :apartment_id, :integer
  end
end
