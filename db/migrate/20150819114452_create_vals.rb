class CreateVals < ActiveRecord::Migration
  def change
    create_table :vals do |t|
      t.string :p1
      t.string :p2
      t.string :p3
      t.string :p4
      t.string :p5

      t.timestamps
    end
  end
end
