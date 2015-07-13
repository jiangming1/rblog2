class AddMoneyToUser < ActiveRecord::Migration
  def change
    add_column :users, :qian, :integer
    add_column :users, :rmb, :integer
  end
end
