FactoryGirl.define do
  factory :person do
    first_name Faker::Name.first_name
    last_name Faker::Name.last_name
    company_name Faker::Company.name
    address Faker::Address.street_address
    county Faker::Address.city_prefix
    zip Faker::Address.zip_code
    phone1 Faker::PhoneNumber.phone_number
    phone2 Faker::PhoneNumber.phone_number
    email Faker::Internet.email
    web "https://www.linkedin.com.br"
  end
end
