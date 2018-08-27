class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string
    add_column :users, :birth_year, :integer
    add_column :users, :city, :string
    add_column :users, :photo, :string
    add_column :users, :admin, :boolean
  end
end
