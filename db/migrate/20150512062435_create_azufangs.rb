class CreateAzufangs < ActiveRecord::Migration
  def change
    create_table :azufangs do |t|
      t.string :username
      t.string :password
      t.text :innertext
      t.string :xiaoqu
      t.string :title
      t.integer :area
      t.integer :minprice
      t.string :lianxiren
      t.string :phone
      t.string :tupian

      t.timestamps null: false
    end
  end
end
