# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Destroying DB...."

List.destroy_all
Movie.destroy_all

puts "Creating movies..."
10.times do
  movie = Movie.new(
    title:    Faker::Movies::LordOfTheRings.unique.character,
    overview: Faker::Movies::LordOfTheRings.location,
    poster_url: "https://picsum.photos/300/500"
  )
  movie.save!
  puts "#{movie.title}"
end
