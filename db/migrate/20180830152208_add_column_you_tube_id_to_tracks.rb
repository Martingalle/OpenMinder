class AddColumnYouTubeIdToTracks < ActiveRecord::Migration[5.2]
  def change
    add_column :tracks, :youtube_id, :string, default: ""
  end
end
