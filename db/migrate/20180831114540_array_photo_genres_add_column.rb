class ArrayPhotoGenresAddColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :genres, :photo, :string, array: true, default: []
  end
end
