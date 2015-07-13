json.array!(@yonghus) do |yonghu|
  json.extract! yonghu, :id, :xingming, :gongsimingcheng, :shouji, :qq, :quhao, :gongsidianhua, :ip
  json.url yonghu_url(yonghu, format: :json)
end
