class ChangeValidatesColumnsTypes < ActiveRecord::Migration[5.2]
  def change
    remove_column :opinions, :approved
    remove_column :tracks, :approved
    add_column :opinions, :approved, :integer, default: 0
    add_column :tracks, :approved, :integer, default: 0
  end
end
