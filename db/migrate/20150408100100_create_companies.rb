class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :phone
      t.string :address
      t.string :email
      t.string :fax
      t.text :description
      t.decimal :level

      t.timestamps null: false
    end
  end
end
