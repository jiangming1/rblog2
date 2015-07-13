class CreateSoftnames < ActiveRecord::Migration
  def change
    create_table :softnames do |t|
      t.string :name
      t.integer :huajun_id
      t.integer :duote_id
      t.integer :crsky_id
      t.text :body

      t.timestamps null: false
    end
  end
end
