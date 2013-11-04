class ConsumersController < ApplicationController
  def index
    render json: Consumer.all
  end
end
