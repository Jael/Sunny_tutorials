class TutorInfosController < ApplicationController
  def new
    @tutor_info = TutorInfo.new
  end

  def create
    @tutor_info = TutorInfo.new(params[:tutor_info])
    @tutor_info.user_id = current_user.id
    if @tutor_info.save
      redirect_to @tutor_info, notice: "Successfully"
    else
      render :new
    end
  end

  def show
    @tutor_info = TutorInfo.find(params[:id])
  end
end
