class AddDatematchToDays < ActiveRecord::Migration[5.1]
  def change
    add_column :days, :datematch, :string
  end
end
