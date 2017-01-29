require 'test_helper'

class PetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pet = pets(:one)
  end

  test "should get index" do
    get pets_url
    assert_response :success
  end

  test "should get new" do
    get new_pet_url
    assert_response :success
  end

  test "should create pet" do
    assert_difference('Pet.count') do
      post pets_url, params: { pet: { breed: @pet.breed, cat: @pet.cat, dog_lg: @pet.dog_lg, dog_md: @pet.dog_md, dog_sm: @pet.dog_sm, other: @pet.other, pet_kind: @pet.pet_kind, sitter_id: @pet.sitter_id, user_id: @pet.user_id } }
    end

    assert_redirected_to pet_url(Pet.last)
  end

  test "should show pet" do
    get pet_url(@pet)
    assert_response :success
  end

  test "should get edit" do
    get edit_pet_url(@pet)
    assert_response :success
  end

  test "should update pet" do
    patch pet_url(@pet), params: { pet: { breed: @pet.breed, cat: @pet.cat, dog_lg: @pet.dog_lg, dog_md: @pet.dog_md, dog_sm: @pet.dog_sm, other: @pet.other, pet_kind: @pet.pet_kind, sitter_id: @pet.sitter_id, user_id: @pet.user_id } }
    assert_redirected_to pet_url(@pet)
  end

  test "should destroy pet" do
    assert_difference('Pet.count', -1) do
      delete pet_url(@pet)
    end

    assert_redirected_to pets_url
  end
end
