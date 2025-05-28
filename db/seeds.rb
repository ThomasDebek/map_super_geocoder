# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# 20;47

p "Generate Location 📍"
Location.delete_all

Location.create!(
  name: "Central Park",
  address: "New York, NY, USA",
  latitude: 40.785091,
  longitude: -73.968285
)

Location.create!(
  name: "Eiffel Tower",
  address: "Champ de Mars, Paris, France",
  latitude: 48.858370,
  longitude: 2.294481
)

Location.create!(
  name: "Sydney Opera House",
  address: "Bennelong Point, Sydney NSW, Australia",
  latitude: -33.856784,
  longitude: 151.215297
)

Location.create!(
  name: "Wawel Castle",
  address: "Wawel 5, 31-001 Kraków, Poland",
  latitude: 50.054383,
  longitude: 19.936180
)

Location.create!(
  name: "Tokyo Tower",
  address: "4 Chome-2-8 Shibakoen, Minato City, Tokyo, Japan",
  latitude: 35.658581,
  longitude: 139.745433
)


name = "Hotel Martinez - The Unbound Collection by Hyatt"
address = "73 Bd de la Croisette, 06400 Cannes"
Location.create(name:, address:)


name = "Exclusive Hotel Belle Plage"
address = "2 Rue Brougham, 06400 Cannes"
Location.create(name:, address:)


name = "Best Western Premier Le Patio des Artistes - Cannes"
address = "6 Rue de Bone, 06400 Cannes"
Location.create(name:, address:)


name = "Le Negresco"
address = "37 Prom. des Anglais, 06000 Nice"
Location.create(name:, address:)


name = "Caesars Palace"
address = "3570 S Las Vegas Blyd, Las Vegas, NV 89109m United States"
Location.create(name:, address:)


