class TutorInfosController < ApplicationController
  before_filter :authenticate_user, except: [:show, :index]
  before_filter :tutor_user, except: [:show, :index]
  
  def new
    unless current_user.tutor_info.nil?
      redirect_to current_user.tutor_info, notice: "你已申请一份教员资料"
    end
    @tutor_info = TutorInfo.new
  end

  def create
    if current_user.tutor_info.nil?
      @tutor_info = TutorInfo.new(params[:tutor_info])
      @tutor_info.user_id = current_user.id
      if @tutor_info.save
        redirect_to @tutor_info, notice: "Successfully"
      else
        render :new
      end
    else
      redirect_to :guangzhou, notice: "你已申请一份教员资料"
    end
  end

  def show
    @tutor_info = TutorInfo.find(params[:id])
  end
end
