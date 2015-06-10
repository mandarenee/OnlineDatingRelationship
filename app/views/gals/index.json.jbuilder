json.array!(@gals) do |gal|
  json.extract! gal, :id, :id, :name, :worst_bad_date
  json.url gal_url(gal, format: :json)
end
