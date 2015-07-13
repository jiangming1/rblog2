class AddUsernameToL1ss < ActiveRecord::Migration
  def change
 add_column :l1s, :user, :string
   add_column :l1s, :passwd58, :string
    end
end
