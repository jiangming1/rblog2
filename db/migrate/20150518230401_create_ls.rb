class CreateLs < ActiveRecord::Migration
  def change
    create_table :ls do |t|
      t.string :a

      t.timestamps null: false
    end
  end
end
