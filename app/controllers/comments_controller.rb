class CommentsController < ApplicationController
  def create
  	@staff = Staff.find(params[:staff_id])
  	@comment = @staff.comments.create(params[:comment].permit(:name, :body))

  	redirect_to staff_path(@staff)
  end

  def destroy
  	@staff = Staff.find(params[:id])
  	@comment = @staff.comments.find(params[:id])
  	@comment.destroy

  	redirect_to staff_path(@staff)
  end
end
