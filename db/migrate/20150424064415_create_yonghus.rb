class CreateYonghus < ActiveRecord::Migration
  def change
    create_table :yonghus do |t|
      t.string :xingming
      t.string :gongsimingcheng
      t.string :shouji
      t.integer :qq
      t.integer :quhao
      t.integer :gongsidianhua
      t.string :ip

      t.timestamps null: false
    end
  end
end
