class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all.order('created_at DESC')
  end

  def new
    @schedule = Schedule.new
  end

  def create
    @schedule = Schedule.find(schedule_params)

    if @schedule.save
      redirect_to @schedule
    else
      render 'new'
  end
end

  def show
    @schedule = Schedule.find(params[:id])
  end

  def edit
    @schedule = Schedule.find(params[:id])
  end

  def update
    @schedule = Schedule.find(params[:id])

    if @schedule.update(params[:schedule].permit(:admin_code, :admin_name, :admin_email, :staff_fname, :staff_lname, :staff_email, :text, :title))
      redirect_to schedules_path
    else
      render 'edit'
    end
  end

  def destroy
    @schedule = Schedule.find(params[:id])
    @schedule.destroy

    redirect_to root_path
  end

  private

  def schedule_params
    params.require[:schedule].permit(:admin_code, :admin_name, :admin_email, :staff_fname, :staff_lname, :staff_email, :text, :title)
   end
end
