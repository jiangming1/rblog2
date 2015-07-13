json.array!(@smsreceiveds) do |smsreceived|
  json.extract! smsreceived, :id, :no, :body, :tag, :uuid, :mytelno
  json.url smsreceived_url(smsreceived, format: :json)
end
