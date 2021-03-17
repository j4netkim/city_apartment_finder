class AddGoogleTokenToOwners < ActiveRecord::Migration[6.0]
  def change
    add_column :owners, :google_token, :string
  end
end
