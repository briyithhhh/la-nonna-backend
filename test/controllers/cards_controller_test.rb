require "test_helper"

class CardsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cards_index_url
    assert_response :success
  end

  test "should get update" do
    get cards_update_url
    assert_response :success
  end

  test "should get destroy" do
    get cards_destroy_url
    assert_response :success
  end
end
