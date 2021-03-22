class RemoveGoogleRefreshTokenFromOwners < ActiveRecord::Migration[6.0]
  def change
    remove_column :owners, :google_refresh_token, :string
  end
end
