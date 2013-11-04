class DinnersController < ApplicationController
  def index
    render json: Dinner.all
  end

  def show
    render json: Dinner.find(params[:id])
  end
end
