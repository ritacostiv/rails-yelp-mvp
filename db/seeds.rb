# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# 1. Clean the database 🗑️
puts "Cleaning database..."
Restaurant.destroy_all

# 2. Create the instances 🏗️
puts "Creating restaurants..."
dishoom = Restaurant.create(name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese")
puts "Created #{dishoom.name}"
pizza_east = Restaurant.create(name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian")
puts "Created #{pizza_east.name}"

dok_bua = Restaurant.create(name: "Dok Bua", address: "Brookline", category: "chinese")
puts "Created #{dok_bua.name}"

aquitaine = Restaurant.create(name: "Aquitaine", address: "Dedham", category: "french")
puts "Created #{aquitaine.name}"

bon_bon = Restaurant.create(name: "BonBon", address: "Lisbon", category: "belgian")
puts "Created #{bon_bon.name}"

# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."
