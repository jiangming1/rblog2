class CreateP2pproducts < ActiveRecord::Migration
  def change
    create_table :p2pproducts do |t|
      t.string :name
      t.string :company
      t.string :lowestAmount
      t.string :producttypelabel
      t.string :suppliernameshort
      t.string :supplierlogourl
      t.string :channelurl
      t.string :expectedprofitrate
      t.string :idea
      t.string :extrafields
      t.string :investfield
      t.integer :term
      t.integer :p_min_investment
      t.integer :earlyBack
      t.integer :earlytransfer
      t.string :p_title

      t.timestamps null: false
    end
  end
end
