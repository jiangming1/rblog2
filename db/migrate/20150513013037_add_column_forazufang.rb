class AddColumnForazufang < ActiveRecord::Migration
  def change
    add_column :azufangs,:money,:integer
  end
end
