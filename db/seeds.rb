# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Destroying Gardens"

Garden.destroy_all

puts "Creating gardens"

Garden.create!(name: "Mon jardin zen", banner_url: "https://source.unsplash.com/random/?garden")
Garden.create!(name: "La jungle", banner_url: "https://source.unsplash.com/random/?jungle")

puts "Gardens created!"
