json.array!(@rjs) do |rj|
  json.extract! rj, :id, :ming, :danjia, :wangjia, :jieshao, :pdf, :caozuo, :kehuduan, :daohang, :chuangkou, :baobiao, :jiaocheng, :xinxijiegou
  json.url rj_url(rj, format: :json)
end
