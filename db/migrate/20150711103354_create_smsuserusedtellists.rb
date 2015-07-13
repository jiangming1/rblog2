class CreateSmsuserusedtellists < ActiveRecord::Migration
  def change
    create_table :smsuserusedtellists do |t|
      t.string :name
      t.integer :telpostion

      t.timestamps null: false
    end
  end
end
