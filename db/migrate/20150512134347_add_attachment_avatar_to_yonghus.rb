class AddAttachmentAvatarToYonghus < ActiveRecord::Migration
  def self.up
    change_table :yonghus do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :yonghus, :avatar
  end
end
