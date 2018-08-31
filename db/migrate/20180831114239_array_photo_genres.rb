class ArrayPhotoGenres < ActiveRecord::Migration[5.2]
  def change
    remove_column :genres, :photo
  end
end
