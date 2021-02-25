class CreateApartments < ActiveRecord::Migration[6.0]
  def change
    create_table :apartments do |t|
      t.string :unit
      t.float :rent
      t.string :description
      t.integer :occupants
      t.integer :owner_id

      t.timestamps
    end
  end
end
