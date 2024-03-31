class RemindersController < ApplicationController
  def index
    @reminders = Reminder.all
  end
end
