class AddHistoryidToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :history_matched_ids, :integer, array: true, default: []
  end
end
