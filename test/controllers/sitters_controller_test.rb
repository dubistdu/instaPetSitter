require 'test_helper'

class SittersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sitter = sitters(:one)
  end

  test "should get index" do
    get sitters_url
    assert_response :success
  end

  test "should get new" do
    get new_sitter_url
    assert_response :success
  end

  test "should create sitter" do
    assert_difference('Sitter.count') do
      post sitters_url, params: { sitter: { address: @sitter.address, backyard: @sitter.backyard, city: @sitter.city, email: @sitter.email, lat: @sitter.lat, long: @sitter.long, name: @sitter.name, phone: @sitter.phone, picture_id: @sitter.picture_id, preferences: @sitter.preferences, state: @sitter.state, zipcode: @sitter.zipcode } }
    end

    assert_redirected_to sitter_url(Sitter.last)
  end

  test "should show sitter" do
    get sitter_url(@sitter)
    assert_response :success
  end

  test "should get edit" do
    get edit_sitter_url(@sitter)
    assert_response :success
  end

  test "should update sitter" do
    patch sitter_url(@sitter), params: { sitter: { address: @sitter.address, backyard: @sitter.backyard, city: @sitter.city, email: @sitter.email, lat: @sitter.lat, long: @sitter.long, name: @sitter.name, phone: @sitter.phone, picture_id: @sitter.picture_id, preferences: @sitter.preferences, state: @sitter.state, zipcode: @sitter.zipcode } }
    assert_redirected_to sitter_url(@sitter)
  end

  test "should destroy sitter" do
    assert_difference('Sitter.count', -1) do
      delete sitter_url(@sitter)
    end

    assert_redirected_to sitters_url
  end
end
