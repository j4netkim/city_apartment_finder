class AddApartmentIdToOwners < ActiveRecord::Migration[6.0]
  def change
    add_column :owners, :apartment_id, :integer
  end
end
