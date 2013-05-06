class StudentInfosController < ApplicationController
  before_filter :authenticate_user, except: [:index, :show]
  before_filter :student_user, except: [:index, :show]
  
  def new
    @student_info = current_user.student_infos.new
  end
end
