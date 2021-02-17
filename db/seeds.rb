# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Creating some flats with love <3"
3.times do
  Flat.create!(
    name: Faker::JapaneseMedia::OnePiece.character,
    address: Faker::JapaneseMedia::OnePiece.location,
    description: "Very cool place in #{Faker::JapaneseMedia::OnePiece.location}",
    price_per_night: 200,
    number_of_guests: 3
  )
end
puts "Flats created"