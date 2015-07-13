json.array!(@companies) do |company|
  json.extract! company, :id, :name, :phone, :address, :email, :fax, :description, :level
  json.url company_url(company, format: :json)
end
