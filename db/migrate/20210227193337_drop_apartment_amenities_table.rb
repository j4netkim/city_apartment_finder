class DropApartmentAmenitiesTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :apartment_amenities
  end
end
