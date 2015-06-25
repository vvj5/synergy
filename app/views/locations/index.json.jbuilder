json.array!(@locations) do |location|
  json.extract! location, :id, :city, :company_id
  json.url location_url(location, format: :json)
end
