class AddUsedToSmszfblogs < ActiveRecord::Migration
  def change
    add_column :smszfblogs, :used, :boolean,:default =>false
  end
end
