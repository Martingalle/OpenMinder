class CreateOpinions < ActiveRecord::Migration[5.2]
  def change
    create_table :opinions do |t|
      t.text :description
      t.string :name
      t.string :fake_author
      t.string :fake_city
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
