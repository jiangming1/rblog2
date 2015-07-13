class AddTingfangweiForazufang < ActiveRecord::Migration
  def change
    add_column :azufangs,:shi,:integer
    add_column :azufangs,:ting,:integer
    add_column :azufangs,:wei,:integer
    add_column :azufangs,:ceng,:integer
    add_column :azufangs,:zongceng,:integer
  end
end
