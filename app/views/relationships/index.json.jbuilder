json.array!(@relationships) do |relationship|
  json.extract! relationship, :id, :id, :guy_id, :gal_id, :first_date
  json.url relationship_url(relationship, format: :json)
end
