class CreateZfBduihuas < ActiveRecord::Migration
  def change
    create_table :zf_bduihuas do |t|
      t.date :riqi1
      t.date :riqi2
      t.date :riqi3
      t.integer :jin1
      t.integer :jin2
      t.integer :jin3
      t.string :touxiang
      t.string :zhanghu
      t.string :shouji
      t.string :jiaoyihao
      t.datetime :shijian
      t.string :name

      t.timestamps null: false
    end
  end
end
