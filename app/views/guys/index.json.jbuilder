json.array!(@guys) do |guy|
  json.extract! guy, :id, :id, :name, :number_of_emails_sent
  json.url guy_url(guy, format: :json)
end
