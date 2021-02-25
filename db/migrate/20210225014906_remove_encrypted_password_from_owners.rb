class RemoveEncryptedPasswordFromOwners < ActiveRecord::Migration[6.0]
  def change
    remove_column :owners, :encrypted_password, :string
  end
end
