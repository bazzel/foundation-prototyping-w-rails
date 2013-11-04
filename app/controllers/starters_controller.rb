class StartersController < ApplicationController
  def show
    render json: Starter.find(params[:id])
  end
end
