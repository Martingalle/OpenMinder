class ChangeFrozenColumnNameToBanned < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :frozen, :banned
  end
end
