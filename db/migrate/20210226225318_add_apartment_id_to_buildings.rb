class AddApartmentIdToBuildings < ActiveRecord::Migration[6.0]
  def change
    add_column :buildings, :apartment_id, :integer
  end
end
