class AddPhotoToOpinions < ActiveRecord::Migration[5.2]
  def change
    add_column :opinions, :photo, :string
  end
end
