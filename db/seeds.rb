# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

o1 = Owner.create!(name: "Eren Yeager", username:"eyeager", email: "ereny456@gmail.com", password: "string")
o2 = Owner.create!(name: "Levi Ackermann", username: "lackermann", email: "levia67@gmail.com", password: "titan")
o3 = Owner.create!(name: "Sasha Braus", username: "sbraus", email: "sashab95", password: "scouts")


b1 = Building.create!(owner: o1, name: "37 Wall Street", address: "37 Wall Street New York, NY 10005")
b2 = Building.create!(owner: o1, name: "71 Broadway", address: "71 Broadway New York,NY 10006")
b3 = Building.create!(owner: o2, name: "Greenwich Club", address: "88 Greenwich Street New York,NY 10006")

a1 = Apartment.create!(building: b1 ,unit: "17R", rent: 2525.00, description: "spacious studio with mordern finishes in luxury building located in the heart of Financial District.", occupants: 1)
a2 = Apartment.create!(building: b2 ,unit: "7E", rent: 2610.00, description: "71 Broadway Apartments offers both convenience and style.", occupants: 2)
a3 = Apartment.create!(building: b3 ,unit: "1311", rent: 2450.00, description: "Converted to designer condominiums in 2007.", occupants: 1)


am1 = Amenity.create!(name: "Doorman", comments: "Very nice living space.")
am2 = Amenity.create!(name: "Subway", comments: "Close to subway stations.")
am3 = Amenity.create!(name: "Elevator", comments: "Elevators available.")

AmenityApartment.create!(apartment: a1, amenity: am1)
AmenityApartment.create!(apartment: a2, amenity: am1)
AmenityApartment.create!(apartment: a3, amenity: am3)






