class CreateApartmentAmenities < ActiveRecord::Migration[6.0]
  def change
    create_table :apartment_amenities do |t|
      t.integer :apartment_id
      t.integer :amenity_id
      t.text :comment

      t.timestamps
    end
  end
end
