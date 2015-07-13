json.array!(@zf_bjietus) do |zf_bjietu|
  json.extract! zf_bjietu, :id, :biaotixingming, :zhanghu, :shouji, :jiaoyihao, :shijian
  json.url zf_bjietu_url(zf_bjietu, format: :json)
end
