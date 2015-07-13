class CreateWelcomes < ActiveRecord::Migration
  def change
    create_table :welcomes do |t|
      t.string :a

      t.timestamps null: false
    end
  end
end
