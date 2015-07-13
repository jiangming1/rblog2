json.array!(@smschongzhirecords) do |smschongzhirecord|
  json.extract! smschongzhirecord, :id, :oldbi, :chongzhijine, :chongzhibi, :dingdanhao
  json.url smschongzhirecord_url(smschongzhirecord, format: :json)
end
