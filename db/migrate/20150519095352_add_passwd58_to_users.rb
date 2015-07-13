class AddPasswd58ToUsers < ActiveRecord::Migration
  def change
 add_column :users, :passwd58, :string
 add_column :users, :money, :string
  end
end
