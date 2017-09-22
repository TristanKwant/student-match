class ChangeDatematch < ActiveRecord::Migration[5.1]

    def change
      remove_column :days, :datematch, :string
    end

end
