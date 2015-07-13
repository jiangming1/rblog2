class Azufang < ActiveRecord::Base
has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "240x240>" },:default_url => "/images/:style/missing.png",:path => ":rails_root/public/:attachment/:id/:style/:id.:extension",:url => "/:attachment/:id/:style/:id.:extension"  
validates_attachment_content_type :photo, :content_type =>  ["image/jpg", "image/jpeg"]
belongs_to :user 
end
