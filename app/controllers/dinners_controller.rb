class DinnersController < ApplicationController
  def index
    render json: Dinner.includes(starter: [dishes: :consumers],
                                 main_course: [dishes: :consumers],
                                 dessert: [dishes: :consumers])
  end

  def show
    render json: Dinner.find(params[:id])
  end
end
