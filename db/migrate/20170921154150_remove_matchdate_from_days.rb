class RemoveMatchdateFromDays < ActiveRecord::Migration[5.1]
  def change
    remove_column :days, :matchdate, :string
  end
end
