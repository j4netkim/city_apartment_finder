class RemoveGoogleTokenFromOwners < ActiveRecord::Migration[6.0]
  def change
    remove_column :owners, :google_token, :string
  end
end
