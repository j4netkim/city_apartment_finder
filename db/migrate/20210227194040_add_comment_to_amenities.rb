class AddCommentToAmenities < ActiveRecord::Migration[6.0]
  def change
    add_column :amenities, :comments, :string
  end
end
