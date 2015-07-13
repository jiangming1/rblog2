json.array!(@smstags) do |smstag|
  json.extract! smstag, :id, :name, :price, :mobid, :mobno, :laiyuan, :isonline
  json.url smstag_url(smstag, format: :json)
end
