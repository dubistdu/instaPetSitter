# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

kenia = User.create!(name: "Kenia Valladarez", address: "928 22nd street", city: "Sarasota", state: "FL", zip: "34234", phone: "(941) 954-5726", email:"kenia@example.com", about_me: "I love my dog", backyard:true, preferences: "No cats please", picture: File.open(Rails.root.join("db/seedimages/kenia.png")))
  kenia.pets.create!(pet_kind:"Dog", breed:"Yorkie", size:"sm")
  kenia.sit_pets.create!(pet_kind: "Any", size: "sm")
  kenia.sit_pets.create!(pet_kind: "Any", size: "md")

gavin = User.create!(name: "Gavin Stark", address: "1121 23rd Ave N", city: "St Petersburg", state: "FL", zip: "33704", phone: "(941) 955-5555", email:"Gavin@example.com", about_me: "I have a cute dog", backyard:true, preferences: "No Pitbull please", picture: File.open(Rails.root.join("db/seedimages/gavin.png")))
  gavin.pets.create!(pet_kind:"Dog", breed: "dachshund", size:"sm")
  gavin.sit_pets.create!(pet_kind: "Dog", size:"sm")
  gavin.sit_pets.create!(pet_kind: "Dog", size:"md")
  gavin.sit_pets.create!(pet_kind: "Dog", size:"lg")
  gavin.sit_pets.create!(pet_kind: "Cat", size:"sm")

angel = User.create!(name: "Angel", address: "1960 72nd Ave NE", city: "St Petersburg", state: "FL", zip: "33702", phone: "(111) 111-1111", email:"Angel@example.com", about_me: "I have no pets", backyard:false, preferences: "house broken pets only", picture: File.open(Rails.root.join("db/seedimages/angel.png")))
  angel.sit_pets.create!(pet_kind: "cat", size:"sm")
  angel.sit_pets.create!(pet_kind: "dog", size:"sm")

jasmine = User.create!(name: "Jasmine Frantz", address: "2615 12th St N", city: "St Petersburg", state: "FL", zip: "33704", phone: "(222) 222-2222", email:"jasmine@example.com", about_me: "", backyard:true, preferences: "Only dogs", picture: File.open(Rails.root.join("db/seedimages/jas.png")))
  jasmine.pets.create!(pet_kind:"Dog", breed: "Lhasa Apso", size: "sm")
  jasmine.pets.create!(pet_kind:"Dog", breed: "Lhasa Apso", size: "sm")
  jasmine.pets.create!(pet_kind:"Dog", breed: "Springer Spaniel", size: "md")
  jasmine.pets.create!(pet_kind:"Dog", breed: "Golden Retriever", size: "lg")
  jasmine.sit_pets.create!(pet_kind: "dog", size: "md")

markL = User.create!(name: "Mark L", address: "8278 27th Ave N", city: "St Petersburg", state: "FL", zip: "33710", phone: "(555) 555-5555", email:"Mark@example.com", about_me: "I am allergic to dogs", backyard:false, preferences: "bird only", picture: File.open(Rails.root.join("db/seedimages/markL.png")))
  markL.pets.create!(pet_kind:"Bird", size: "sm")
  markL.sit_pets.create!(pet_kind:"Bird", size: "sm")

toni = User.create!(name: "Toni", address: "2035 18th Ave S", city: "St Petersburg", state: "FL", zip: "33712", phone: "(941) 666-6666", email:"Toni@example.com", about_me: "", backyard:false, preferences: "Small pets only", picture: File.open(Rails.root.join("db/seedimages/toni.png")))
  toni.pets.create!(pet_kind:"Dog", breed: "Chihuahua", size: "sm")

miguel = User.create!(name: "Miguel", address: "620 Apalachee Dr NE", city: "St Petersburg", state: "FL", zip: "33702", phone: "(123) 555-5555", email:"Miguel@example.com", backyard:true, picture: File.open(Rails.root.join("db/seedimages/miguel.png")))
  miguel.pets.create!(pet_kind:"Dog", size: "lg")

katherine = User.create!(name: "Katherine T", address: "555 5th Ave NE Ste 343,", city: "St Petersburg", state: "FL", zip: "33701", phone: "(666) 333-3333", email:"kat@example.com", about_me: "cat person", backyard:true, picture: File.open(Rails.root.join("db/seedimages/katheryn.png")))
  katherine.pets.create!(pet_kind:"cat", size: "sm")
  katherine.sit_pets.create!(pet_kind:"cat", size: "md")
  katherine.sit_pets.create!(pet_kind:"cat", size: "sm")

jason = User.create!(name: "Jason", address: "1200 N Shore Dr NE Unit 304,", city: "St Petersburg", state: "FL", zip: "33701", phone: "(555) 333-3333", email:"jason@example.com", about_me: "lover of all animals", backyard:true, picture: File.open(Rails.root.join("db/seedimages/jason.png")))
  jason.pets.create!(pet_kind:"Bird", size: "sm")
  jason.sit_pets.create!(pet_kind:"dog", size: "lg")
  jason.sit_pets.create!(pet_kind:"any", size: "sm")

holly = User.create!(name: "Holly V", address: "1020 38th Ave N,", city: "St Petersburg", state: "FL", zip: "33704", phone: "(999) 333-3333", email:"holly@example.com", backyard:false, picture: File.open(Rails.root.join("db/seedimages/holly.png")))
  holly.sit_pets.create!(pet_kind:"dog", size: "sm")

jon = User.create!(name: "Jon", address: "4362 14th St NE, Saint petsersburg,", city: "St Petersburg", state: "FL", zip: "33703", phone: "(555) 000-0000", email:"jon@example.com", backyard:false, picture: File.open(Rails.root.join("db/seedimages/jon.png")))
  jon.pets.create!(pet_kind:"Iguana", size: "md")
  jon.sit_pets.create!(pet_kind:"Iguana", size: "sm")

liz = User.create!(name: "Liz Tiller", address: "701 Alda Way NE,", city: "St Petersburg", state: "FL", zip: "33704", phone: "(555) 123-1234", email:"liz@example.com", backyard:true, picture: File.open(Rails.root.join("db/seedimages/liz.png")))
  liz.pets.create!(pet_kind:"cat", size: "md")
  liz.sit_pets.create!(pet_kind:"cat", size: "sm")
  liz.sit_pets.create!(pet_kind:"cat", size: "md")
