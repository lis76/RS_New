class AddUserIdToPhotos < ActiveRecord::Migration[7.0]
  def change
    add_column :photos, :user_id, :integer
    add_index :photos, :user_id
  end
end
