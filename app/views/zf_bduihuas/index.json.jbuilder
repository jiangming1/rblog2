json.array!(@zf_bduihuas) do |zf_bduihua|
  json.extract! zf_bduihua, :id, :riqi1, :riqi2, :riqi3, :jin1, :jin2, :jin3, :touxiang, :zhanghu, :shouji, :jiaoyihao, :shijian, :name
  json.url zf_bduihua_url(zf_bduihua, format: :json)
end
