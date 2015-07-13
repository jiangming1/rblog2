class CreateSmsreceiveds < ActiveRecord::Migration
  def change
    create_table :smsreceiveds do |t|
      t.string :no
      t.string :body
      t.string :tag

      t.timestamps null: false
    end
  end
end
