class CreateL1s < ActiveRecord::Migration
  def change
    create_table :l1s do |t|
      t.string :a

      t.timestamps null: false
    end
  end
end
