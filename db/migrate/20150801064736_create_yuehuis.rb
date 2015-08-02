class CreateYuehuis < ActiveRecord::Migration
  def change
    create_table :yuehuis do |t|
      t.string :xingming
      t.string :tel
      t.string :addr

      t.timestamps null: false
    end
  end
end
