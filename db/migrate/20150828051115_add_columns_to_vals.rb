class AddColumnsToVals < ActiveRecord::Migration
  def change
    add_column :vals, :p6, :string
    add_column :vals, :p7, :string
    add_column :vals, :p8, :string
    add_column :vals, :p9, :string
  end
end
