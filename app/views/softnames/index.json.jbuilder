json.array!(@softnames) do |softname|
  json.extract! softname, :id, :name, :huajun_id, :duote_id, :crsky_id, :body
  json.url softname_url(softname, format: :json)
end
