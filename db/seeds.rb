puts "Destroying gardens"

Garden.destroy_all

puts "Creating gardens"

garden1 = Garden.create!(name: "My first garden", banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_1.jpg")
garden2 = Garden.create!(name: "My second garden", banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_2.jpg")

puts "Gardens created"
