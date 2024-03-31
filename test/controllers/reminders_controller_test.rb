require "test_helper"

class RemindersControllerTest < ActionDispatch::IntegrationTest

  setup do
    Reminder.create!(url: "www.manga.com/sakura", page_number: 25)
    Reminder.create!(url: "www.manga.com/cdz", page_number: 50)
  end

  test "should get index and list all reminders" do
    get reminders_url
    assert_response :success
    assert_select "li", "www.manga.com/sakura"
    assert_select "li", "www.manga.com/cdz"
  end
end
