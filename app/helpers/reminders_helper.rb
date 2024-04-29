module RemindersHelper
  def reminder_form_button(reminder)
    reminder.new_record? ? "Create Reminder" : "Update Reminder"
  end
end
