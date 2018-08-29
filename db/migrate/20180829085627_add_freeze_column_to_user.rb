class AddFreezeColumnToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :frozen, :boolean, default: false
  end
end
