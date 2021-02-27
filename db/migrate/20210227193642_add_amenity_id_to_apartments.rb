class AddAmenityIdToApartments < ActiveRecord::Migration[6.0]
  def change
    add_column :apartments, :amenity_id, :integer
  end
end
