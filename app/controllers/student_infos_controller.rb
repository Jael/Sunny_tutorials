class StudentInfosController < ApplicationController
  load_and_authorize_resource

  def index
    @student_infos = params[:search_id] ? Search.find(params[:search_id]).find_student_infos : StudentInfo.all
    @search = Search.new(search_type: "student")
  end
  
  def new
    @student_info = StudentInfo.new
  end

  def create
    @student_info = StudentInfo.new(params[:student_info].merge!(user_id: current_user.id))
    if @student_info.save
      redirect_to @student_info, notice: "创建成功"
    else
      render :new
    end
  end

  def update
    if @student_info.update_attributes(params[:student_info])
      redirect_to @student_info, notice: "修改成功"
    else
      render :edit
    end
  end
end
