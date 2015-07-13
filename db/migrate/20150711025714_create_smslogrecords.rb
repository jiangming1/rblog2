class CreateSmslogrecords < ActiveRecord::Migration
  def change
    create_table :smslogrecords do |t|
      t.string :jieshouhaoma
      t.string :neirong
      t.string :xiangmu
      t.date :huoqushijian

      t.timestamps null: false
    end
  end
end
