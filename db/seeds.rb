# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Perform.destroy_all

grasshoppers = {
  title: "Grasshoppers",
  company: "Circus Katoen",
  address: "2 Promenade Sainte-Marie, 71100 Chalon-sur-Saône, France",
  longitude: 46.7843313,
  latitude: 4.8624976,
  collected: false

}
mamontagne = {
  title: "Ma Montagne",
  company: "La Baleine Cargo",
  address: "29, rue Edmé Vadot, 71100 Chalon-sur-Saône, France",
  latitude: 46.7791799,
  longitude: 4.8601122,
  collected: false
}
buratina = {
  company: "H+H",
  address: "23 Rempart Saint-Pierre, 71100 Chalon-sur-Saône, France",
  latitude: 46.7857973,
  longitude: 4.8502166,
  title: "Bouratina",
  collected: true
}
derlauf = {
  company: "Vélocimanes associés - Le cirque du bout du monde",
  address: "2 Promenade Sainte-Marie, 71100 Chalon-sur-Saône, France",
  latitude: 46.7843313,
  longitude: 4.8624976,
  title: "Der Lauf"
}
casseroles = {
  company: "L'Envers du Monde",
  address: "Chalon-sur-Saône, Saône-et-Loire, France",
  latitude: 46.7888997,
  longitude: 4.8529605,
  title: "Les petites casseroles que tu trimballes",
  collected: true
}
armoire = {
  company: "Les Armoires Pleines",
  address: "13 Rue Des Gaillardons, 71100 Chalon-sur-Saône, France",
  latitude: 46.7800366,
  longitude: 4.8354108,
  title: "Rotofil",
  collected: true
}
platz = {
  company: "Margo Chou & Frères",
  address: "23 Rue Denis Papin, 71100 Chalon-sur-Saône, France",
  latitude: 46.7879552,
  longitude: 4.8733016,
  title: "Sensational Platz",
  collected: false
}
scie = {
  company: "La Micro Cie",
  address: "Place de l'Obélisque, 71100 Chalon-sur-Saône, France",
  title: "Olga",
  collected: false
}

[grasshoppers, mamontagne, buratina, derlauf, casseroles, armoire, platz, scie].each do |attributes|
  perform = Perform.create!(attributes)
  puts "Created #{perform.title}"

  olga = Spectacle.create!(
    title: "Olga",
    photo: "36jy1efoyan554b3mms8yhp59hng",
    description: "Olga is alone, perhaps at home. She sees nobody, speaks to nobody, knows nobody. She d
    oesn't need anyone. Everything is there, in her cocoon. Her reserves, her instruments, her small objects... Enough to hold out for a while before ending up underwater."
  )

  olga = Spectacle.create!(
    title: "Sensational Platz",
    photo: "l72py9t89nzyw3r51fy31rcb8dhb",
    description: "After writing her first solo show I took refuge there, there, there ... crossing the mental and physical refuges of the individual, Margo Chou takes us back to her nocturnal refuge by evoking the platz with which she has had an intimate relationship for fifteen years."
  )

end
puts "Finished!"
