require "test_helper"

class ChatroomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chatroom = chatrooms(:one)
  end

  test "should get index" do
    get chatrooms_url, as: :json
    assert_response :success
  end

  test "should create chatroom" do
    assert_difference("Chatroom.count") do
      post chatrooms_url, params: { chatroom: { name: @chatroom.name } }, as: :json
    end

    assert_response :created
  end

  test "should show chatroom" do
    get chatroom_url(@chatroom), as: :json
    assert_response :success
  end

  test "should update chatroom" do
    patch chatroom_url(@chatroom), params: { chatroom: { name: @chatroom.name } }, as: :json
    assert_response :success
  end

  test "should destroy chatroom" do
    assert_difference("Chatroom.count", -1) do
      delete chatroom_url(@chatroom), as: :json
    end

    assert_response :no_content
  end
end
