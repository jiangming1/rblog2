class CreateZfBjietus < ActiveRecord::Migration
  def change
    create_table :zf_bjietus do |t|
      t.string :biaotixingming
      t.string :zhanghu
      t.string :shouji
      t.string :jiaoyihao
      t.datetime :shijian

      t.timestamps null: false
    end
  end
end
