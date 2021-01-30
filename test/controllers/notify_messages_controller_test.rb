require 'test_helper'

class NotifyMessagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @notify_message = notify_messages(:one)
  end

  test "should get index" do
    get notify_messages_url
    assert_response :success
  end

  test "should get new" do
    get new_notify_message_url
    assert_response :success
  end

  test "should create notify_message" do
    assert_difference('NotifyMessage.count') do
      post notify_messages_url, params: { notify_message: { contents: @notify_message.contents, title: @notify_message.title } }
    end

    assert_redirected_to notify_message_url(NotifyMessage.last)
  end

  test "should show notify_message" do
    get notify_message_url(@notify_message)
    assert_response :success
  end

  test "should get edit" do
    get edit_notify_message_url(@notify_message)
    assert_response :success
  end

  test "should update notify_message" do
    patch notify_message_url(@notify_message), params: { notify_message: { contents: @notify_message.contents, title: @notify_message.title } }
    assert_redirected_to notify_message_url(@notify_message)
  end

  test "should destroy notify_message" do
    assert_difference('NotifyMessage.count', -1) do
      delete notify_message_url(@notify_message)
    end

    assert_redirected_to notify_messages_url
  end
end
