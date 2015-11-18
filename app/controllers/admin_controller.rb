class AdminController < ApplicationController
  def index
    @admin = Admin.all
  end

  def new
    @admin = Admin.new
  end

  def show
    @admin = Admin.find(params[:id])
  end

  def edit
    @admin = Admin.find?(params[:id])
  end

  def create
     @admin = Admin.new(admin_params)
    if @admin.save
      redirect_to @admin
    else
      render 'new'
    end
  end



  def update
     @admin = Admin.find(params[:id])
   if @admin.update(admin_params)
    redirect_to @user
  else
   render 'new'
  end
end


  def destroy
    @admin = Admin.find(params[:id])
    @admin.destroy
    redirect_to @admin_path
  end

  private
   def admin_params
    params.require(:admin).permit(:email, :password,)
  end
end
