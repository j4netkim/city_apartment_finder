class CreateAmenityApartments < ActiveRecord::Migration[6.0]
  def change
    create_table :amenity_apartments do |t|
      t.integer :apartment_id
      t.integer :amenity_id

      t.timestamps
    end
  end
end
