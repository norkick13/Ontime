class UserController < ApplicationController
  def index
   @user = User.all
 end

  def new
    @user = User.new
  end

  def show
   @user = User.find(params[:id]) 
  end

  def edit
   @user = User.find(params[:id])  

  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end

  def update
    @user = Users.find(params[:id])
   if @user.update(user_params)
    redirect_to @user
  else
   render 'new'
  end
end

  def destroy
   @user =Use.find(params[:id])
    @user.destroy
    redirect_to @user_path
  end


  private
  def user_params
    params.require(:user).permit(:email, :password)
  end
end
