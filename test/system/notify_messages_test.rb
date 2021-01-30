require "application_system_test_case"

class NotifyMessagesTest < ApplicationSystemTestCase
  setup do
    @notify_message = notify_messages(:one)
  end

  test "visiting the index" do
    visit notify_messages_url
    assert_selector "h1", text: "Notify Messages"
  end

  test "creating a Notify message" do
    visit notify_messages_url
    click_on "New Notify Message"

    fill_in "Contents", with: @notify_message.contents
    fill_in "Title", with: @notify_message.title
    click_on "Create Notify message"

    assert_text "Notify message was successfully created"
    click_on "Back"
  end

  test "updating a Notify message" do
    visit notify_messages_url
    click_on "Edit", match: :first

    fill_in "Contents", with: @notify_message.contents
    fill_in "Title", with: @notify_message.title
    click_on "Update Notify message"

    assert_text "Notify message was successfully updated"
    click_on "Back"
  end

  test "destroying a Notify message" do
    visit notify_messages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Notify message was successfully destroyed"
  end
end
