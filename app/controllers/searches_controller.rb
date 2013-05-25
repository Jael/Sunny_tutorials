class SearchesController < ApplicationController
  def create
    @search = Search.create!(params[:search])
    if @search.search_type == "tutor"
      redirect_to tutor_infos_path(search_id: @search.id)
    else
      redirect_to student_infos_path(search_id: @search.id)
    end
  end
end
