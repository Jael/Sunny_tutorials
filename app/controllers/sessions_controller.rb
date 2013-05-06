class SessionsController < ApplicationController
  def create
    user = User.find_by_name(params[:name])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to :guangzhou, notice: "登录成功"
    else
      render :new
      flash[:alert] = "用户名或密码错误"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to :guangzhou, notice: "退出成功"
  end

end
