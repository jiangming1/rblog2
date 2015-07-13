class CreateWxzhuanzhangs < ActiveRecord::Migration
  def change
    create_table :wxzhuanzhangs do |t|
      t.string :jin
      t.datetime :riqi
      t.string :xingming

      t.timestamps null: false
    end
  end
end
