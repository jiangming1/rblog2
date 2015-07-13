json.array!(@ls) do |l|
  json.extract! l, :id, :a
  json.url l_url(l, format: :json)
end
