class CreateP2pcompanies < ActiveRecord::Migration
  def change
    create_table :p2pcompanies do |t|
      t.string :c_name
      t.string :c_icon
      t.string :c_net_address
      t.string :c_phone
      t.string :c_address
      t.string :c_create_time
      t.string :c_persion
      t.string :c_province
      t.string :c_product_type

      t.timestamps null: false
    end
  end
end
