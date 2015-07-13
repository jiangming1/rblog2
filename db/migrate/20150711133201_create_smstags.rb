class CreateSmstags < ActiveRecord::Migration
  def change
    create_table :smstags do |t|
      t.string :name
      t.integer :price
      t.integer :mobid
      t.string :mobno
      t.string :laiyuan
      t.boolean :isonline

      t.timestamps null: false
    end
  end
end
