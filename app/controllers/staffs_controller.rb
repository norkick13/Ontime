class StaffsController < ApplicationController
	def index
		@staffs = Staff.all.order('created_at DESC') 
	end

	def new
		@staff = Staff.new
	end

	def show
		@staff = Staff.find(params[:id])
	end

	def edit
		@staff = Staff.find(params[:id])
	end 

	def create
		@staff = Staff.new(staff_params)
		if @staff.save
			redirect_to @staff
		else
			render 'new'
		end
	end

	def update
		@staff = Staff.find(params[:id])
		#if @staff.update(staff_params)
		if @schedule.update(params{:schedule}.permit(:name, :email, :title, :body))
			redirect_to @staff
		else
			render 'edit'
		end
	end

	def destroy
		@staff = Staff.find(params[:id])
		@staff.destroy
		redirect_to @staff_path
	end

	private

	def staff_params
		params.require(:staff).permit(:name, :email, :title, :body)
		
end
end
