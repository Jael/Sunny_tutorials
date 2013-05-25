class TutorInfosController < ApplicationController
  load_and_authorize_resource

  def index
    @tutor_infos = params[:search_id] ? Search.find(params[:search_id]).find_tutor_infos : TutorInfo.all
    @search = Search.new(search_type: "tutor")
  end
  
  def new
    unless current_user.tutor_info.nil?
      redirect_to current_user.tutor_info, notice: "你已申请一份教员资料"
    end
    @tutor_info = TutorInfo.new
  end

  def create
    if current_user.tutor_info.nil?
      @tutor_info = TutorInfo.new(params[:tutor_info].merge!(user_id: current_user.id))
      if @tutor_info.save
        redirect_to @tutor_info, notice: "新建成功"
      else
        render :new
      end
    else
      redirect_to :guangzhou, notice: "你已申请一份教员资料"
    end
  end

  def update
    if @tutor_info.update_attributes(params[:tutor_info])
      redirect_to @tutor_info, notice: "修改成功"
    else
      render :edit
    end
  end
  
  def destroy
    @tutor_info.destroy
    redirect_to :guangzhou, notice: "删除成功"
  end
end
