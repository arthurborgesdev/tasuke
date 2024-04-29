class RemindersController < ApplicationController
  def index
    @reminders = Reminder.all
  end
  
  def new
    @reminder = Reminder.new
  end

  def create
    @reminder = Reminder.new(reminder_params)

    if @reminder.save
      redirect_to @reminder
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @reminder = Reminder.find(params[:id])
  end

  def update
    @reminder = Reminder.find(params[:id])

    if @reminder.update(reminder_params)
      redirect_to @reminder
    else
      render :edit, status: unprocessable_entity
    end
  end

  def destroy
    @reminder = Reminder.find(params[:id])
    @reminder.destroy

    redirect_to reminders_path, status: :see_other
  end

  private
    def reminder_params
      params.require(:reminder).permit(:url, :page_number)
    end
end
