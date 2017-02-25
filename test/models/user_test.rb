require 'test_helper'

class UserTest < ActiveSupport::TestCase
  setup do
    # Setup users needed by each test

    @kenia = User.create!(name: "Kenia Valladarez", address: "928 22nd street", city: "Sarasota", state: "FL", zip: "34234", phone: "(941) 954-5726", email:"kenia@example.com", about_me: "I love my dog", backyard:true, preferences: "No cats please")
    @kenia.pets.create!(pet_kind:"dog", breed:"Yorkie", size:"sm")
    @kenia.sit_pets.create!(pet_kind: "dog", size: "sm", pet_number: 2)
    @kenia.sit_pets.create!(pet_kind: "dog", size: "giant", pet_number: 1)

    @gavin = User.create!(name: "Gavin Stark", address: "1121 23rd Ave N", city: "St Petersburg", state: "FL", zip: "33704", phone: "(941) 955-5555", email:"Gavin@example.com", about_me: "I have a cute dog", backyard:true, preferences: "No Pitbull please")
    @gavin.pets.create!(pet_kind:"dog", breed: "dachshund", size:"sm")
    @gavin.sit_pets.create!(pet_kind: "dog", size:"sm", pet_number: 1)
    @gavin.sit_pets.create!(pet_kind: "dog", size:"md", pet_number: 1)
    @gavin.sit_pets.create!(pet_kind: "dog", size:"lg", pet_number: 1)
    @gavin.sit_pets.create!(pet_kind: "cat", pet_number: 2)
    @gavin.sit_pets.create!(pet_kind: "other")
  end

  test "can categorize a list of sitters" do
    dog_sitters, cat_sitters, other_sitters, multi_sitters = User.categorize(User.all)

    assert_equal [@kenia, @gavin], dog_sitters
    assert_equal [@gavin], cat_sitters
    assert_equal [@gavin], other_sitters
    assert_equal [@gavin], multi_sitters
  end

  test "can find nearby users(sitters) given a lattitude and longitude" do
    # supply some sample data
    #  - some users, some that sit dogs, some that sit cats, etc.

    # Toni is a far far away user... She shouldn't be in the results
    toni = User.create!(name: "Toni", address: "555 Main Street", city: "Los Angeles", state: "CA", zip: "90210", phone: "(941) 955-5555", email:"Toni@example.com", about_me: "", backyard:true, preferences: "No Pitbull please")
    toni.sit_pets.create!(pet_kind: "dog", size:"sm", pet_number: 1)

    # We expect these
    expected_nearby_users = [@gavin, @kenia]

    # They are both 40 miles from TIY (this is TIY's lat/lng)
    tiy_latitude = 27.866191699999998
    tiy_longitude = -82.64590270000001

    # Run the code we are testing
    #  - Call the code that find's nearby sitters
    # Compare to expected output
    #  - See if we get the list of dog sitters, cat sitters, etc. we want

    assert_equal expected_nearby_users, User.nearby(tiy_latitude, tiy_longitude)
  end
 end
