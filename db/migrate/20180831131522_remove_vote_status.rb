class RemoveVoteStatus < ActiveRecord::Migration[5.2]
  def change
    remove_column :votes, :status
  end
end
