# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
apartment.create([
    {unit: 17R, rent: 2,525, description: "spacious studio with mordern finishes in luxury building located in the heart of Financial District.", occupants: 1, owner_id: 1},
    {unit: 7E, rent: 2,610, description: "71 Broadway Apartments offers both convenience and style.", occupants: 2, owner_id: 2},
    {unit: 15H, rent: 2,595, description: "corner alcove studio.", occupants: 1, owner_id: 3}
])

building.create([
    {name: "37 Wall Street", address: "37 Wall Street New York, NY 10005", owner_id: 1},
    {name: "71 Broadway", address: "71 Broadway New York,NY 10006", owner_id: 2},
    {name: "37 Wall Street", address: "37 Wall Street New York,NY 10005", owner_id: 3}
])

amenities.create([
    {name: "Doorman", "Pets Allowed"},
    {name: "Elevator"},
    {name: "Doorman", "Pets Allowed"}
])

t.integer "apartment_id"
t.integer "amenity_id"
t.text "comment"

apartment_amenities.create([
    {apartment_id: 1, amenity_id: 3, comment: "Very nice living space."},
    {apartment_id: 2, amenity_id: 1, comment: "Close to subway stations."},
    {apartment_id: 1, amenity_id: 3, comment: "Lots of room for pets!"}
])

owner.create ([
    {name: Eren Yeager, user_id: 1},
    {name: Levi Ackermann, user_id: 2},
    {name: Sasha Braus, user_id: 3}
])


user.create ([
    {username: "eyeager", email: "ereny456@gmail.com", password: "string"}
])
