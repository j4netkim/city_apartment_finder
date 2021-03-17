class AddGoogleRefreshTokenToOwners < ActiveRecord::Migration[6.0]
  def change
    add_column :owners, :google_refresh_token, :string
  end
end
