class StaffController < ApplicationController
	def new
		@staff = Staff.all 
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
		if @staff.update(staff_params)
			redirect_to @staff
		else
			render 'new'
		end
	end

	def delete
		@staff = Staff.find(params[:id])
		@staff.destroy
		redirect_to @staff_path
	end

	private

	def staff_params
		params.require(:staff).permit(:fname, :lname, :email)
	end
end
