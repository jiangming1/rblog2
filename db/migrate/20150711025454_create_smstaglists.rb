class CreateSmstaglists < ActiveRecord::Migration
  def change
    create_table :smstaglists do |t|
      t.string :name
      t.integer :price
      t.string :laiyuan
      t.boolean :isonline

      t.timestamps null: false
    end
  end
end
