class Smszfblog < ActiveRecord::Base
validates_uniqueness_of   :zfbid,:case_sensitive => false, :message => "该用户名已存在!"
end
