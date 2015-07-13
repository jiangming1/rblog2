json.array!(@smszfblogs) do |smszfblog|
  json.extract! smszfblog, :id, :zfbid, :qian
  json.url smszfblog_url(smszfblog, format: :json)
end
