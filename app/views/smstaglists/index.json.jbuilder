json.array!(@smstaglists) do |smstaglist|
  json.extract! smstaglist, :id, :name, :price, :laiyuan, :isonline
  json.url smstaglist_url(smstaglist, format: :json)
end
