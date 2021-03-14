class RemoveOwnerIdFromApartments < ActiveRecord::Migration[6.0]
  def change
    remove_column :apartments, :owner_id, :integer
  end
end
