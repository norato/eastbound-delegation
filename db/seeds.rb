# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'
CSV.read("app/views/delegates/index.csv", headers: true, header_converters: :symbol).each do |deli|
  d = Delegate.where(name_last: deli[:last], name_first: deli[:first], state: deli[:state]).first_or_initialize
  d.links = deli[:links]
  d.save
end
