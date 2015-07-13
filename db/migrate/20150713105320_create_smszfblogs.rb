class CreateSmszfblogs < ActiveRecord::Migration
  def change
    create_table :smszfblogs do |t|
      t.string :zfbid
      t.integer :qian

      t.timestamps null: false
    end
  end
end
