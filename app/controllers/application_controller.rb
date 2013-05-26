class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user


  rescue_from CanCan::AccessDenied do |exception|
    if current_user.nil?
      redirect_to :sign_up, notice: "请先注册"
    else
      tutor_user
      student_user
    end
  end
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  def student_user
    unless current_user.role == "student"
      redirect_to :guangzhou, notice: "你的身份不是学生，请退出登录另外注册学员帐号。"
    end
  end
  def tutor_user
    unless current_user.role == "tutor"
      redirect_to :guangzhou, notice: "您的身份不是教员，请退出登录另外注册教员帐号"
    end
  end
end
