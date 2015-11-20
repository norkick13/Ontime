class CommentsController < ApplicationController
  def create
  	@schedule = Schedule.find(params[:schedule_id])
  	@comment = @schedule.comments.create(params[:comment].permit(:name, :body))

  	redirect_to schedule_path(@schedule)
  end

  def destroy
  	@schedule = Schedule.find(params[:id])
  	@comment = @schedule.comments.find(params[:id])
  	@comment.destroy

  	redirect_to schedule_path(@schedule)
  end
end
