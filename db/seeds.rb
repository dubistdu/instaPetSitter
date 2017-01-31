# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

kenia = User.create!(name: "Kenia Valladarez", address: "928 22nd street", city: "Sarasota", state: "FL", zipcode: "34234", phone: "(941) 954-5726", email:"kenia@example.com", about_me: "I love my dog", backyard:true, preferences: "No cats please", picture: File.open(Rails.root.join("db/seed/images/home1.png")
kenia.Pets.create!(pet_kind:"Dog", breed: "Yorkie", dog_sm: 2, images: File.open(Rails.root.join("db/seedimages/kenia.png")))
kenia = User.create!(name: "Kenia Valladarez", address: "928 22nd street", city: "Sarasota", state: "FL", zipcode: "34234", phone: "(941) 954-5726", email:"kenia@example.com", about_me: "I love my dog", backyard:true, preferences: "No cats please", picture: File.open(Rails.root.join("db/seed/images/home1.png")
kenia.Pets.create!(pet_kind:"Dog", breed: "Yorkie", dog_sm: 2, images: File.open(Rails.root.join("db/seedimages/kenia.png")))
