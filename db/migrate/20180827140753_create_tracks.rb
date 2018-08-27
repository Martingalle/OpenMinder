class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.string :name
      t.string :artist
      t.string :artist_location
      t.string :album
      t.text :argument
      t.string :photo
      t.string :audio_url
      t.references :user, foreign_key: true
      t.references :genre, foreign_key: true
      t.references :opinion, foreign_key: true

      t.timestamps
    end
  end
end
