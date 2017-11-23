# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
require 'faker'
# Examples:
10.times do |restaurant|
  Restaurant.create!(
    name: Faker::Overwatch.hero,
    address: Faker::Overwatch.location,
    phone_number: Faker::Overwatch.quote,
    category: "french"
    )

end
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
