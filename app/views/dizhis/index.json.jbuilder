json.array!(@dizhis) do |dizhi|
  json.extract! dizhi, :id, :name, :tel, :addr
  json.url dizhi_url(dizhi, format: :json)
end
