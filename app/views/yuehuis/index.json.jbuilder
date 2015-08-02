json.array!(@yuehuis) do |yuehui|
  json.extract! yuehui, :id, :xingming, :tel, :addr
  json.url yuehui_url(yuehui, format: :json)
end
