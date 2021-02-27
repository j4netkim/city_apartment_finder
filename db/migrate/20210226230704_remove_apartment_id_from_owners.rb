class RemoveApartmentIdFromOwners < ActiveRecord::Migration[6.0]
  def change
    remove_column :owners, :apartment_id, :integer
  end
end
