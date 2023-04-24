# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Perform.destroy_all

Grasshoppers = {title: "Grasshoppers", name: "Circus Katoen", address: "2 Promenade Sainte-Marie, 71100 Chalon-sur-Saône, France"}
Mamontagne = {title: "Ma Montagne", name: "La Baleine Cargo", address: "29, rue Edmé Vadot, 71100 Chalon-sur-Saône, France"}
[Grasshoppers, Mamontagne].each do |attributes|
  perform = Perform.create!(attributes)
  puts "Created #{perform.name}"
end
puts "Finished!"
