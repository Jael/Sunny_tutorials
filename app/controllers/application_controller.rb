class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  def authenticate_user
    if current_user.nil?
      redirect_to :sign_up, notice: "请先注册"
    end
  end
  def student_user
    unless current_user.role == "student"
      redirect_to :back, notice: "你的身份不是学生，请退出登录另外注册学员帐号。"
    end
  end
  def tutor_user
    unless current_user.role == "tutor"
      redirect_to :back, notice: "您的身份不是教员，请退出登录另外注册教员帐号"
    end
  end
end
