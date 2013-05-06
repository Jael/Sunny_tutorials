class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Successfully Create user"
      if @user.role == "tutor"
        redirect_to new_tutor_info_path
      else 
        redirect_to new_student_info_path
      end
    else
      render :new
    end
  end
  
  def show
    @user = User.find(params[:id])
  end
  

end
