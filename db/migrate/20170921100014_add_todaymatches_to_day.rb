class AddTodaymatchesToDay < ActiveRecord::Migration[5.1]
  def change
    add_column :days, :todaymatch, :string, array: true, default: []
  end
end
