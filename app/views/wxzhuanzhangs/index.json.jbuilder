json.array!(@wxzhuanzhangs) do |wxzhuanzhang|
  json.extract! wxzhuanzhang, :id, :jin, :riqi, :xingming
  json.url wxzhuanzhang_url(wxzhuanzhang, format: :json)
end
