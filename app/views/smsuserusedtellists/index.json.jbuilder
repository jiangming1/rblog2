json.array!(@smsuserusedtellists) do |smsuserusedtellist|
  json.extract! smsuserusedtellist, :id, :name, :telpostion
  json.url smsuserusedtellist_url(smsuserusedtellist, format: :json)
end
