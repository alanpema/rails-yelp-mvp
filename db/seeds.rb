# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Restaurant.destroy_all

dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "558961555", category:"chinese" }
pizza_east =  {name: "Pizza East", address: "56A Shtch High St, London E1 6PQ", phone_number: "458961555", category:"italian"}
pizz =  {name: "Pizz", address: "56A Shoreditch High St, Ln E1 6PQ", phone_number: "458621555", category:"japanese"}
piz_east =  {name: "Piz East", address: "56A Shoredigh St, London E1 6PQ", phone_number: "4589615445", category:"french"}
pzza_east =  {name: "Pzza East", address: "oreditch High St, London E1 6PQ", phone_number: "458961325", category:"belgian"}



[dishoom, pizza_east, pizz, piz_east, pzza_east].each do |attributes|
  restaurant = Restaurant.create!(attributes)
end
