class MainCoursesController < ApplicationController
  def show
    render json: MainCourse.find(params[:id])
  end
end
