class AddPhotoToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :photo_url, :string
  end
end
