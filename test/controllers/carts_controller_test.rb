require "test_helper"

class CartsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get carts_index_url
    assert_response :success
  end

  test "should get update" do
    get carts_update_url
    assert_response :success
  end

  test "should get delete" do
    get carts_delete_url
    assert_response :success
  end

  test "should get private" do
    get carts_private_url
    assert_response :success
  end

  test "should get carts_params" do
    get carts_carts_params_url
    assert_response :success
  end
end
