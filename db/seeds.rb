# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

ActiveRecord::Base.transaction do
  person_table = CSV.table(Rails.root.join('db/load_data/us-500.csv'))
  person_table.each do |row|
    state = State.find_or_create_by(acronym: row.fetch(:state))
    city = City.find_or_create_by(name: row.fetch(:city), state_id: state[:id])
    person_data = {}
    person_table.headers.each { |header| person_data[:"#{header}"] = row.fetch(header) }
    person_data[:state] = state
    person_data[:city] = city
    Person.create(person_data)
  end
end
