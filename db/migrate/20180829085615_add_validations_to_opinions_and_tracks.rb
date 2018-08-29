class AddValidationsToOpinionsAndTracks < ActiveRecord::Migration[5.2]
  def change
    add_column :opinions, :approved, :boolean, default: false
    add_column :tracks, :approved, :boolean, default: false
  end
end
