class AddImeiToSmsno < ActiveRecord::Migration
  def change
    add_column :smsnos, :uuid, :string
    add_column :smsreceiveds, :uuid, :string
    add_column :smsreceiveds, :mytelno, :string
    add_column :smslogrecords, :user_id, :integer
    add_column :smschongzhirecords, :user_id, :integer
  end
end
