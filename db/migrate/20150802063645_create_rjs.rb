class CreateRjs < ActiveRecord::Migration
  def change
    create_table :rjs do |t|
      t.string :ming
      t.string :danjia
      t.string :wangjia
      t.string :jieshao
      t.string :pdf
      t.string :caozuo
      t.string :kehuduan
      t.string :daohang
      t.string :chuangkou
      t.string :baobiao
      t.string :jiaocheng
      t.string :xinxijiegou

      t.timestamps null: false
    end
  end
end
