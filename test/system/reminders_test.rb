require "application_system_test_case"

class RemindersTest < ApplicationSystemTestCase
  test "visiting the reminders path" do
    visit reminders_path
    assert_selector "h1", text: "Reminders"
  end
end
