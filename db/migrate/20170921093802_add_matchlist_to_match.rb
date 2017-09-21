class AddMatchlistToMatch < ActiveRecord::Migration[5.1]
  def change
    add_column :matches, :matchlist, :string, array: true, default: []
  end
end
