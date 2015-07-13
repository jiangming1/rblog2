class CreateSmschongzhirecords < ActiveRecord::Migration
  def change
    create_table :smschongzhirecords do |t|
      t.string :oldbi
      t.integer :chongzhijine
      t.string :chongzhibi
      t.string :dingdanhao

      t.timestamps null: false
    end
  end
end
