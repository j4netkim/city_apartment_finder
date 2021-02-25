# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
building.create([
    {unit: 17R, rent: 2,525, description: "spacious studio with mordern finishes in luxury building located in the heart of Financial District.", occupants: 1},
    {unit: 7E, rent: 2,610, description: "71 Broadway Apartments offers both convenience and style.", occupants: 2},
    {unit: 15H, rent: 2,595, description: "corner alcove studio.", occupants: 1}
])