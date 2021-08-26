# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

50.times do
  movie = Movie.new(
    title:    Faker::Movies::LordOfTheRings.character,
    overview: Faker::Movies::LordOfTheRings.location,
    poster_url: "https://picsum.photos/300/500"
  )
  movie.save!
end

3.times do
  list = List.new(
    name: "Classical Movies"
  )
  list.save!
end
