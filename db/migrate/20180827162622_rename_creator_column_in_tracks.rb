class RenameCreatorColumnInTracks < ActiveRecord::Migration[5.2]
  def change
    rename_column :tracks, :user_id, :creator_id
  end
end
