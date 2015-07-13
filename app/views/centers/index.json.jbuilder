json.array!(@centers) do |center|
  json.extract! center, :id, :name
  json.url center_url(center, format: :json)
end
