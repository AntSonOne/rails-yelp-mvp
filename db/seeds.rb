# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', category: 'chinese' }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', category: 'italian' }
petite_brasserie = { name: 'Petite Brasserie', address: '5 Pl. Saint-Pierre, 33000 Bordeaux', category: 'french' }
petit_bois =  { name: 'Petit Bois', address: '12 Pl. du Parlement, 33000 Bordeaux', category: 'belgian' }
aperitivo  =  { name: ' Aperitivo ', address: '15 Pl. du Parlement, 33000 Bordeaux', category: 'japanese' }

[dishoom, pizza_east, petite_brasserie, petit_bois, aperitivo].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
