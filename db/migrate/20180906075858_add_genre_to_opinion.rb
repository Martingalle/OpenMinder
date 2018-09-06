class AddGenreToOpinion < ActiveRecord::Migration[5.2]
  def change
    add_reference :opinions, :genre, index: true
    add_foreign_key :opinions, :genres
  end
end
