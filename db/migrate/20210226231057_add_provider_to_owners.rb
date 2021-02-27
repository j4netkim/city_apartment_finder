class AddProviderToOwners < ActiveRecord::Migration[6.0]
  def change
    add_column :owners, :provider, :string
  end
end
