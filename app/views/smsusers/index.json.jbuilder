json.array!(@smsusers) do |smsuser|
  json.extract! smsuser, :id, :usertype, :qq, :mail, :mob, :loginname, :zhifubao
  json.url smsuser_url(smsuser, format: :json)
end
