json.array!(@applications) do |application|
  json.extract! application, :id, :opportunity_id, :employee_id, :status, :applications_description, :start_date, :end_date
  json.url application_url(application, format: :json)
end
