json.array!(@azufangs) do |azufang|
  json.extract! azufang, :id
  json.url azufang_url(azufang, format: :json)
end
