class AddEmailToOwners < ActiveRecord::Migration[6.0]
  def change
    add_column :owners, :email, :string
  end
end
