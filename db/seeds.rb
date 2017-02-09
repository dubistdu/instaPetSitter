# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

kenia = User.create!(name: "Kenia Valladarez", address: "928 22nd street", city: "Sarasota", state: "FL", zip: "34234", phone: "(941) 954-5726", email:"kenia@example.com", about_me: "I love my dog", backyard:true, preferences: "No cats please", picture: File.open(Rails.root.join("db/seedimages/kenia.png")))
kenia.pets.create!(pet_kind:"dog", breed:"Yorkie", size:"sm")
kenia.sit_pets.create!(pet_kind: "dog", size: "sm", pet_number: 2)
kenia.sit_pets.create!(pet_kind: "dog", size: "giant", pet_number: 1)

gavin = User.create!(name: "Gavin Stark", address: "1121 23rd Ave N", city: "St Petersburg", state: "FL", zip: "33704", phone: "(941) 955-5555", email:"Gavin@example.com", about_me: "I have a cute dog", backyard:true, preferences: "No Pitbull please", picture: File.open(Rails.root.join("db/seedimages/gavin.png")))
gavin.pets.create!(pet_kind:"dog", breed: "dachshund", size:"sm")
gavin.sit_pets.create!(pet_kind: "dog", size:"sm", pet_number: 1)
gavin.sit_pets.create!(pet_kind: "dog", size:"md", pet_number: 1)
gavin.sit_pets.create!(pet_kind: "dog", size:"lg", pet_number: 1)
gavin.sit_pets.create!(pet_kind: "cat", pet_number: 2)
gavin.sit_pets.create!(pet_kind: "other")
gavin.ratings.create!(star:"1")

angel = User.create!(name: "Angel", address: "1960 72nd Ave NE", city: "St Petersburg", state: "FL", zip: "33702", phone: "(111) 111-1111", email:"Angel@example.com", about_me: "I have no pets", backyard:false, preferences: "house broken pets only", picture: File.open(Rails.root.join("db/seedimages/angel.png")))
angel.sit_pets.create!(pet_kind: "cat", size:"sm", pet_number: 5)
angel.sit_pets.create!(pet_kind: "dog", size:"sm", pet_number: 3)
angel.ratings.create!(star:"5")

jasmine = User.create!(name: "Jasmine Frantz", address: "2615 12th St N", city: "St Petersburg", state: "FL", zip: "33704", phone: "(222) 222-2222", email:"jasmine@example.com", about_me: "", backyard:true, preferences: "Only dogs", picture: File.open(Rails.root.join("db/seedimages/jas.png")))
jasmine.pets.create!(pet_kind:"dog", breed: "Lhasa Apso", size: "sm")
jasmine.pets.create!(pet_kind:"dog", breed: "Lhasa Apso", size: "sm")
jasmine.pets.create!(pet_kind:"dog", breed: "Springer Spaniel", size: "md")
jasmine.pets.create!(pet_kind:"dog", breed: "Golden Retriever", size: "lg")
jasmine.sit_pets.create!(pet_kind: "dog", size: "md", pet_number: 1)
jasmine.sit_pets.create!(pet_kind: "dog", size: "giant")

markL = User.create!(name: "Mark L", address: "8278 27th Ave N", city: "St Petersburg", state: "FL", zip: "33710", phone: "(555) 555-5555", email:"Mark@example.com", about_me: "I am allergic to dogs", backyard:false, preferences: "bird only", picture: File.open(Rails.root.join("db/seedimages/markL.png")))
markL.pets.create!(pet_kind:"Bird", size: "sm")
markL.sit_pets.create!(pet_kind:"other", size: "sm", pet_number: 2)

toni = User.create!(name: "Toni", address: "2035 18th Ave S", city: "St Petersburg", state: "FL", zip: "33712", phone: "(941) 666-6666", email:"Toni@example.com", about_me: "", backyard:false, preferences: "Small pets only", picture: File.open(Rails.root.join("db/seedimages/toni.png")))
toni.pets.create!(pet_kind:"dog", breed: "Chihuahua", size: "sm")
toni.sit_pets.create!(pet_kind: "dog", size: "sm", pet_number: 1)

miguel = User.create!(name: "Miguel", address: "620 Apalachee Dr NE", city: "St Petersburg", state: "FL", zip: "33702", phone: "(123) 555-5555", email:"Miguel@example.com", backyard:true, picture: File.open(Rails.root.join("db/seedimages/miguel.png")))
miguel.pets.create!(pet_kind:"other")

katherine = User.create!(name: "Katherine T", address: "555 5th Ave NE Ste 343,", city: "St Petersburg", state: "FL", zip: "33701", phone: "(666) 333-3333", email:"kat@example.com", about_me: "cat person", backyard:true, picture: File.open(Rails.root.join("db/seedimages/katheryn.png")))
katherine.pets.create!(pet_kind:"cat", size: "sm")
katherine.sit_pets.create!(pet_kind:"cat", size: "md")
katherine.sit_pets.create!(pet_kind:"cat", size: "sm")
katherine.ratings.create!(star:"5")

jason = User.create!(name: "Jason", address: "1200 N Shore Dr NE Unit 304,", city: "St Petersburg", state: "FL", zip: "33701", phone: "(555) 333-3333", email:"jason@example.com", about_me: "lover of all animals", backyard:true, picture: File.open(Rails.root.join("db/seedimages/jason.png")))
jason.pets.create!(pet_kind:"Bird", size: "sm")
jason.sit_pets.create!(pet_kind:"dog", size: "lg", pet_number: 1)
jason.sit_pets.create!(pet_kind:"cat", size: "sm", pet_number: 2)
jason.ratings.create!(star:"4")


holly = User.create!(name: "Holly V", address: "1020 38th Ave N,", city: "St Petersburg", state: "FL", zip: "33704", phone: "(999) 333-3333", email:"holly@example.com", backyard:false, picture: File.open(Rails.root.join("db/seedimages/holly.png")))
holly.sit_pets.create!(pet_kind:"dog", size: "sm")
holly.ratings.create!(star:"1")

jon = User.create!(name: "Jon", address: "4362 14th St NE, Saint petsersburg,", city: "St Petersburg", state: "FL", zip: "33703", phone: "(555) 000-0000", email:"jon@example.com", backyard:false, picture: File.open(Rails.root.join("db/seedimages/jon.png")))
jon.pets.create!(pet_kind:"other", size: "md")
jon.sit_pets.create!(pet_kind:"other", size: "sm")

liz = User.create!(name: "Liz Tiller", address: "701 Alda Way NE,", city: "St Petersburg", state: "FL", zip: "33704", phone: "(555) 123-1234", email:"liz@example.com", backyard:true, picture: File.open(Rails.root.join("db/seedimages/liz.png")))
liz.pets.create!(pet_kind:"cat", size: "md")
liz.sit_pets.create!(pet_kind:"cat", size: "sm", pet_number: 2)
liz.sit_pets.create!(pet_kind:"cat", size: "md", pet_number: 1)
liz.ratings.create!(star:"5")

mg = User.create!(name: "Michael Grein", address: "4335 Olive Ave,", city: "Sarasota", state: "FL", zip: "34231", phone: "(444) 123-1234", email:"michael@example.com", backyard:true, picture: File.open(Rails.root.join("db/seedimages/michael.png")))
mg.pets.create!(pet_kind:"cat", size: "md")
mg.sit_pets.create!(pet_kind:"other", size: "giant", pet_number: 3)
mg.sit_pets.create!(pet_kind:"other", size: "lg", pet_number: 3)
mg.ratings.create!(star:"5")

ophra = User.create!(name: "Ophra W", address: "4721 Stone Ridge Trl", city: "Sarasota", state: "FL", zip: "34232", phone: "(000)-000-0000", email:"ophra@example.com", about_me: "I am Ophra", backyard:true, preferences: "All dogs are good", picture: File.open(Rails.root.join("db/seedimages/ophra.png")))
ophra.sit_pets.create!(pet_kind: "dog", size:"lg", pet_number: 1)
ophra.sit_pets.create!(pet_kind: "cat", pet_number: 2)
ophra.sit_pets.create!(pet_kind: "other")
ophra.ratings.create!(star:"4")

jessica = User.create!(name: "Jessica Bunchman", address: "7417 Sanderling Rd", city: "Sarasota", state: "FL", zip: "34242", phone: "(000)-000-1000", email:"jessica@example.com", about_me: "", backyard:true, preferences: "No mean animal please", picture: File.open(Rails.root.join("db/seedimages/Jessica.jpg")))
jessica.sit_pets.create!(pet_kind: "dog", size:"lg", pet_number: 1)
jessica.sit_pets.create!(pet_kind: "cat", pet_number: 3)
jessica.ratings.create!(star:"5")

cy = User.create!(name: "Cy Hong", address: "8207 Timber Lake Ln", city: "Sarasota", state: "FL", zip: "34243", phone: "(000)-000-0011", email:"cy@example.com", about_me: "", backyard:true, preferences: "Only crate trained dogs", picture: File.open(Rails.root.join("db/seedimages/cyhong.jpg")))
cy.sit_pets.create!(pet_kind: "dog", size:"lg", pet_number: 1)
cy.sit_pets.create!(pet_kind: "dog", size:"lg", pet_number: 1)
cy.sit_pets.create!(pet_kind: "dog", size:"lg", pet_number: 1)
cy.ratings.create!(star:"1")

sujie = User.create!(name: "Sujie Kim", address: "3022 Bougainvillea St", city: "Sarasota", state: "FL", zip: "34239", phone: "(999)-000-0000", email:"sk@example.com", about_me: "I love dogs", backyard:true, preferences: "Outdoor potty trained dogs only", picture: File.open(Rails.root.join("db/seedimages/sujie_kim.jpg")))
sujie.sit_pets.create!(pet_kind: "dog", size:"sm", pet_number: 1)
sujie.ratings.create!(star:"5")

walter = User.create!(name: "Walter White", address: "1046 Contento St", city: "Sarasota", state: "FL", zip: "34242", phone: "(000)-123-0000", email:"walter@example.com", about_me: "Blue is my favorite color", backyard:true, preferences: "Must be good in a capmer or trailer", picture: File.open(Rails.root.join("db/seedimages/water_white.jpg")))
walter.sit_pets.create!(pet_kind: "dog", size:"lg", pet_number: 1)
walter.sit_pets.create!(pet_kind: "cat", pet_number: 1)
walter.sit_pets.create!(pet_kind: "other", pet_number: 2)
walter.ratings.create!(star:"2")

nathan = User.create!(name: "Nathan Frantz", address: "4587 Camino Real", city: "Sarasota", state: "FL", zip: "34231", phone: "(000)-123-1111", email:"nathan@example.com", about_me: "I am Jasmine's hubby", backyard:true, preferences: "Must be leash trained", picture: File.open(Rails.root.join("db/seedimages/nathan.jpg")))
nathan.pets.create!(pet_kind:"dog", size: "md")
nathan.sit_pets.create!(pet_kind:"other", size: "sm", pet_number: 3)
nathan.sit_pets.create!(pet_kind:"other", size: "lg", pet_number: 3)
nathan.ratings.create!(star:"5")

rebecca = User.create!(name: "Rebecca F Williams", address: "4905 Fallcrest Cir", city: "Sarasota", state: "FL", zip: "34233", phone: "(222)-123-0000", email:"rf@example.com", about_me: "I have one dog and two cats", backyard:true, preferences: "Well behaved animals only", picture: File.open(Rails.root.join("db/seedimages/rebecaa.jpg")))
rebecca.sit_pets.create!(pet_kind: "dog", size:"lg", pet_number: 1)
rebecca.sit_pets.create!(pet_kind: "cat", pet_number: 1)
rebecca.sit_pets.create!(pet_kind: "other", pet_number: 2)
rebecca.ratings.create!(star:"2")

heather = User.create!(name: "Heather Carpini", address: "4854 Huntleigh Dr", city: "Sarasota", state: "FL", zip: "34233", phone: "(000)-123-0000", email:"heather@example.com", about_me: "I have a lab", backyard:true, preferences: "Must get along with other dogs", picture: File.open(Rails.root.join("db/seedimages/heather.jpg")))
heather.sit_pets.create!(pet_kind: "dog", size:"lg", pet_number: 1)

js = User.create!(name: "Jon Stewart", address: "5956 Madrano Dr", city: "Sarasota", state: "FL", zip: "34232", phone: "(000)-666-1111", email:"jonstew@example.com", about_me: "I run animal sanctuary and I used to host a TV show", backyard:true, preferences: "All animals are welcome", picture: File.open(Rails.root.join("db/seedimages/jon_stewart.jpeg")))
js.sit_pets.create!(pet_kind:"dog", size: "md")
js.sit_pets.create!(pet_kind:"dog", size: "sm")
js.sit_pets.create!(pet_kind:"dog", size: "lg")
js.sit_pets.create!(pet_kind:"other", size: "sm", pet_number: 1)
js.sit_pets.create!(pet_kind:"other", size: "lg", pet_number: 1)
js.sit_pets.create!(pet_kind:"cat", size: "lg", pet_number: 1)
js.ratings.create!(star:"5")

gaga = User.create!(name: "Lady Gaga", address: "9235 Hidden Bay Ln", city: "Orlando", state: "FL", zip: "32819", phone: "(777)-777-0000", email:"gaga@example.com", about_me: "I had a little bit too much", backyard:true, preferences: "poker faced dogs", picture: File.open(Rails.root.join("db/seedimages/lady_gaga.jpg")))
gaga.sit_pets.create!(pet_kind: "dog", size:"lg", pet_number: 1)
gaga.ratings.create!(star:"5")

lp = User.create!(name: "Laura Petty", address: "2438 River Rise Ct", city: "Orlando", state: "FL", zip: "32828", phone: "(333)-777-3333", email:"laura@example.com", about_me: "", backyard:true, preferences: "One well behaved cat or dog only", picture: File.open(Rails.root.join("db/seedimages/laura.jpg")))
lp.sit_pets.create!(pet_kind: "dog", pet_number: 1)
lp.sit_pets.create!(pet_kind: "cat", pet_number: 1)
lp.ratings.create!(star:"4")

obama = User.create!(name: "B Obama", address: "10148 Cypress Knee Cir", city: "Orlando", state: "FL", zip: "32825", phone: "(888)-777-8888", email:"bama@example.com", about_me: "Y'all know me", backyard:true, preferences: "Must get along with my dogs", picture: File.open(Rails.root.join("db/seedimages/obama.jpg")))
obama.sit_pets.create!(pet_kind: "dog", pet_number: 1)
obama.ratings.create!(star:"5")

sv = User.create!(name: "Sarah V", address: "1332 W Yale St", city: "Orlando", state: "FL", zip: "32804", phone: "(333)-777-3333", email:"sara@example.com", about_me: "", backyard:true, preferences: "cats only", picture: File.open(Rails.root.join("db/seedimages/sarrah_vesselov.jpg")))
sv.sit_pets.create!(pet_kind: "cat", pet_number: 1)
sv.sit_pets.create!(pet_kind: "cat", pet_number: 1)
sv.ratings.create!(star:"4")
