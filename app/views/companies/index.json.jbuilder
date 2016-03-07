json.array!(@companies) do |company|
  json.extract! company, :id, :name, :company_type, :status
  json.url company_url(company, format: :json)
end
