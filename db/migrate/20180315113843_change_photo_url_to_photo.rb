class ChangePhotoUrlToPhoto < ActiveRecord::Migration[5.1]
  def change
    rename_column :profiles, :photo_url, :photo
  end
end
