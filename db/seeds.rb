# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Apartment.create([
    {unit: "17R", rent: 2525.00, description: "spacious studio with mordern finishes in luxury building located in the heart of Financial District.", occupants: 1},
    {unit: "7E", rent: 2610.00, description: "71 Broadway Apartments offers both convenience and style.", occupants: 2},
    {unit: "1311", rent: 2450.00, description: "Converted to designer condominiums in 2007.", occupants: 1}
])

Building.create([
    {name: "37 Wall Street", address: "37 Wall Street New York, NY 10005"},
    {name: "71 Broadway", address: "71 Broadway New York,NY 10006"},
    {name: "Greenwich Club", address: "88 Greenwich Street New York,NY 10006"}
])

Amenity.create([
    {name: "Doorman", comments: "Very nice living space."},
    {name: "Elevator", comments: "Close to subway stations."},
    {name: "Elevator", comments: "Elevators available."}
])


Owner.create ([
    {name: "Eren Yeager", username:"eyeager", email: "ereny456@gmail.com", password: "string"},
    {name: "Levi Ackermann", username: "lackermann", email: "levia67@gmail.com", password: "titan"},
    {name: "Sasha Braus", username: "sbraus", email: "sashab95", password: "scouts"}
])




