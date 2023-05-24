# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#puts "Cleaning the db..."
Restaurant.destroy_all

puts "Creating 100 restaurants..."

100.times do
  resto = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::Number.number(digits: 10),
    category: %w[chinese italian japanese french belgian].sample
  )
  puts "Restaurant with id #{resto.id} was created"
end

puts "All done!"

# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
