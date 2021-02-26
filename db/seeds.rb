# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
apartment.create([
    {unit: 17R, rent: 2,525, description: "spacious studio with mordern finishes in luxury building located in the heart of Financial District.", occupants: 1},
    {unit: 7E, rent: 2,610, description: "71 Broadway Apartments offers both convenience and style.", occupants: 2},
    {unit: 1311, rent: 2,450, description: "Converted to designer condominiums in 2007.", occupants: 1}
])

building.create([
    {name: "37 Wall Street", address: "37 Wall Street New York, NY 10005"},
    {name: "71 Broadway", address: "71 Broadway New York,NY 10006"},
    {name: "Greenwich Club", address: "88 Greenwich Street New York,NY 10006"}
])

amenities.create([
    {name: "Doorman", "Pets Allowed"},
    {name: "Elevator"},
    {name: "Elevator"}
])

apartment_amenities.create([
    {apartment_id: 1, amenity_id: 3, comment: "Very nice living space."},
    {apartment_id: 2, amenity_id: 1, comment: "Close to subway stations."},
    {apartment_id: 3, amenity_id: 1, comment: "Elevators available."}
])

owner.create ([
    {name: Eren Yeager},
    {name: Levi Ackermann},
    {name: Sasha Braus}
])


user.create ([
    {username: "eyeager", email: "ereny456@gmail.com", password: "string"}
])
