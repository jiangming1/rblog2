class AddAttachmentPhotoToAzufangs < ActiveRecord::Migration
  def self.up
    change_table :azufangs do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :azufangs, :photo
  end
end
