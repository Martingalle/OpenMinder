class RenameCreatorColumnInOpinions < ActiveRecord::Migration[5.2]
  def change
    rename_column :opinions, :user_id, :creator_id
  end
end
