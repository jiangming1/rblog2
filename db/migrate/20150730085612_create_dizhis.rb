class CreateDizhis < ActiveRecord::Migration
  def change
    create_table :dizhis do |t|
      t.string :name
      t.string :tel
      t.string :addr

      t.timestamps null: false
    end
  end
end
