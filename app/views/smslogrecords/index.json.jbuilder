json.array!(@smslogrecords) do |smslogrecord|
  json.extract! smslogrecord, :id, :jieshouhaoma, :neirong, :xiangmu, :huoqushijian
  json.url smslogrecord_url(smslogrecord, format: :json)
end
