class DessertsController < ApplicationController
  def show
    render json: Dessert.find(params[:id])
  end
end
