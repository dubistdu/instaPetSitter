require 'test_helper'

class SitPetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sit_pet = sit_pets(:one)
  end

  test "should get index" do
    get sit_pets_url
    assert_response :success
  end

  test "should get new" do
    get new_sit_pet_url
    assert_response :success
  end

  test "should create sit_pet" do
    assert_difference('SitPet.count') do
      post sit_pets_url, params: { sit_pet: { breed: @sit_pet.breed, cat: @sit_pet.cat, dog_lg: @sit_pet.dog_lg, dog_md: @sit_pet.dog_md, dog_sm: @sit_pet.dog_sm, other: @sit_pet.other, pet_kind: @sit_pet.pet_kind, sitter_id: @sit_pet.sitter_id } }
    end

    assert_redirected_to sit_pet_url(SitPet.last)
  end

  test "should show sit_pet" do
    get sit_pet_url(@sit_pet)
    assert_response :success
  end

  test "should get edit" do
    get edit_sit_pet_url(@sit_pet)
    assert_response :success
  end

  test "should update sit_pet" do
    patch sit_pet_url(@sit_pet), params: { sit_pet: { breed: @sit_pet.breed, cat: @sit_pet.cat, dog_lg: @sit_pet.dog_lg, dog_md: @sit_pet.dog_md, dog_sm: @sit_pet.dog_sm, other: @sit_pet.other, pet_kind: @sit_pet.pet_kind, sitter_id: @sit_pet.sitter_id } }
    assert_redirected_to sit_pet_url(@sit_pet)
  end

  test "should destroy sit_pet" do
    assert_difference('SitPet.count', -1) do
      delete sit_pet_url(@sit_pet)
    end

    assert_redirected_to sit_pets_url
  end
end
