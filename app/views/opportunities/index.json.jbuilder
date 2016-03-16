json.array!(@opportunities) do |opportunity|
  json.extract! opportunity, :id, :title, :type, :status, :description, :start_date, :end_date
  json.url opportunity_url(opportunity, format: :json)
end
