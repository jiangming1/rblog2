class CreateSmsnos < ActiveRecord::Migration
  def change
    create_table :smsnos do |t|
      t.string :no
      t.string :name
      t.string :tag

      t.timestamps null: false
    end
  end
end
