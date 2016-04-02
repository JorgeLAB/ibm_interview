json.array!(@people) do |person|
  json.extract! person, :id, :first_name, :last_name, :company_name, :address, :county, :zip, :phone1, :phone2, :email, :web
  json.url person_url(person, format: :json)
end
