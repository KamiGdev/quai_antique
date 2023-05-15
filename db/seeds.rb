# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(email: "kami@k.k", password: "rv3gJ5g^67M*N[", password_confirmation: "rv3gJ5g^67M*N[")
Schedule.create! lunch_starts_at: Time.now, lunch_ends_at: Time.now, dinner_starts_at: Time.now, dinner_ends_at: Time.now
