class RemoveAmenityIdFromApartments < ActiveRecord::Migration[6.0]
  def change
    remove_column :apartments, :amenity_id, :integer
  end
end
