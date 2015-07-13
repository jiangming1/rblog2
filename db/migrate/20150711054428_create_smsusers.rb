class CreateSmsusers < ActiveRecord::Migration
  def change
    create_table :smsusers do |t|
      t.string :usertype
      t.string :qq
      t.string :mail
      t.string :mob
      t.string :loginname
      t.string :zhifubao

      t.timestamps null: false
    end
  end
end
