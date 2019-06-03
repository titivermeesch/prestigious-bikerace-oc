require 'test_helper'

class SlogansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @slogan = slogans(:one)
  end

  test "should get index" do
    get api_v1_slogans_path, as: :json
    assert_response :success
  end

  test "should create slogan" do
    assert_difference('Slogan.count') do
      post api_v1_slogans_path, params: { firstname: "Test" , lastname: "Test", email: "tit@gmail.com", slogan: "My slogan" }, as: :json
    end

    assert_response 201
  end

  test "should show slogan" do
    get api_v1_slogan_path(@slogan), as: :json
    assert_response :success
  end
end
