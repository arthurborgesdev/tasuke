require "test_helper"

class ReminderTest < ActiveSupport::TestCase
  test "should not save reminder without url" do
    reminder = Reminder.new
    assert_not reminder.save, "Saved the reminder without an url"
  end
end
