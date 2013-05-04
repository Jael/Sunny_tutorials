class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      redirect_to new_tutor_info_path, notice: "Successfully Create user"
    else
      render :new
    end
  end
  
  def show
    @user = User.find(params[:id])
  end
  

end