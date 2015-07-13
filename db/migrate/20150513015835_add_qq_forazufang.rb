class AddQqForazufang < ActiveRecord::Migration
  def change
      add_column :azufangs, :weixin, :string
      add_column :azufangs, :qq, :integer
  end
end
