# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Perform.destroy_all
Spectacle.destroy_all

puts "create spectacles"

grasshoppers = Spectacle.create!(
  title: "Grasshoppers",
  photo: "6ndjm0hpqslv0m8611599cfe3m86",
  description: "Grasshoppers is a reproduction of the resilience and vulnerability of nature and the role that we as humans play in it. The 'living' green in this world has to endure a lot. With a turf in the lead, Circus Katoen is looking for a playful way to visualize this process. In Grasshoppers, Circus Katoen removes a piece of green from its natural habitat and brings it above ground level using trestles, planks, rope and their bodies."
)

mamontagne = Spectacle.create!(
  title: "Ma Montagne",
  photo: "p0k1z9vzrckxy2lpskwswi7e8kh2",
  description: "My Mountain is a docu-fiction written from testimonies. It questions the notion of disability. The show chronicles the birth of a different child. It is carried by 5 artists including a deaf actor and a wheelchair actor. Then 20 wheelchairs with sound invade the space and tell their story.This show is signed in LSF and may be subject to audio description. No pathos in My Mountain, but laughter, emotion and a question that remains open to everyone: and you, what are your mountains?"
)

bouratina = Spectacle.create!(
  title: "Bouratina",
  photo: "qsrsgnrmjvt9tjgwre7ah6txp3gg",
  description: "Nata has built an articulated dummy in her workshop to use her. Beneath her woman's foam envelope, her metal skeleton is well oiled, her heart well irrigated. She names her Bouratina. Together, they explore a new field of possibilities, trying out contortions and positions that are unlikely for ordinary mortals. But Bouratina is not the kind of robot to be guided, it's not just humans who have character !"
)

derlauf = Spectacle.create!(
  title: "Der Lauf",
  photo: "nl0w6rutqeaj2xgcuhsw749lvfmb",
  description: "In a dark and intimate atmosphere, halfway between David Lynch and Intervilles, five short pieces in the form of absurd games. Wearing a bucket on his head, this juggler sets off blindly on a series of experiments that will take him where he wasn't expected. You will be his only guide and come what may. Nothing will be able to stop the course of things... Except you, perhaps?"
)
olga = Spectacle.create!(
  title: "Olga",
  photo: "36jy1efoyan554b3mms8yhp59hng",
  description: "Olga is alone, perhaps at home. She sees nobody, speaks to nobody, knows nobody. She d
  oesn't need anyone. Everything is there, in her cocoon. Her reserves, her instruments, her small objects... Enough to hold out for a while before ending up underwater."
)

platz = Spectacle.create!(
  title: "Sensational Platz",
  photo: "l72py9t89nzyw3r51fy31rcb8dhb",
  description: "After writing her first solo show I took refuge there, there, there ... crossing the mental and physical refuges of the individual, Margo Chou takes us back to her nocturnal refuge by evoking the platz with which she has had an intimate relationship for fifteen years."
)

# [grasshoppers, mamontagne, bouratina, derlauf, platz, olga].each do |attributes|
#   spectacle = Spectacle.create!(attributes)
#   puts "Created #{spectacle.title}"
# end

puts "new performs"
perfgrasshoppers = Perform.new(
  title: "Grasshoppers",
  company: "Circus Katoen",
  address: "2 Promenade Sainte-Marie, 71100 Chalon-sur-Saône, France",
  longitude: 46.7843313,
  latitude: 4.8624976,
  collected: false
)
perfgrasshoppers.spectacle = grasshoppers
puts "perfgrass associated"
perfgrasshoppers.save
puts "perfgrass saved"



perfmamontagne = Perform.new(
  title: "Ma Montagne",
  company: "La Baleine Cargo",
  address: "29, rue Edmé Vadot, 71100 Chalon-sur-Saône, France",
  latitude: 46.7791799,
  longitude: 4.8601122,
  collected: false
)
perfmamontagne.spectacle = mamontagne
puts "perfmamontagne associated"
perfmamontagne.save
puts "perfmamontagne saved"


perfbouratina = Perform.new(
  company: "H+H",
  address: "23 Rempart Saint-Pierre, 71100 Chalon-sur-Saône, France",
  latitude: 46.7857973,
  longitude: 4.8502166,
  title: "Bouratina",
  collected: true
)
perfbouratina.spectacle = bouratina
perfbouratina.save

perfderlauf = Perform.new(
  company: "Vélocimanes associés - Le cirque du bout du monde",
  address: "2 Promenade Sainte-Marie, 71100 Chalon-sur-Saône, France",
  latitude: 46.7843313,
  longitude: 4.8624976,
  title: "Der Lauf"
)
perfderlauf.spectacle = derlauf
perfderlauf.save


perfplatz = Perform.new(
  company: "Margo Chou & Frères",
  address: "23 Rue Denis Papin, 71100 Chalon-sur-Saône, France",
  latitude: 46.7879552,
  longitude: 4.8733016,
  title: "Sensational Platz",
  collected: false
)
perfplatz.spectacle = platz
perfplatz.save

perfolga = Perform.new(
  company: "La Micro Cie",
  address: "Place de l'Obélisque, 71100 Chalon-sur-Saône, France",
  start_time: 21/06/2023,
  title: "Olga",
  collected: false
)
perfolga.spectacle = olga
perfolga.save

# [perfgrasshoppers, perfmamontagne, perfbouratina, perfderlauf, perfcasseroles, perfarmoire, perfplatz, perfolga].each do |attributes|
#   perform = Perform.new(attributes)
#   puts "new #{perform.title}"
#   perform.spectacle = spectacle
#   puts "association #{perform.title}"
#   perform.save
# end
puts "Finished!"
