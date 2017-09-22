class AddingDatematchToDays < ActiveRecord::Migration[5.1]
  def change
    add_column :days, :datematch, :date
  end
end
