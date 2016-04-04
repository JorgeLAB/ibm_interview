class StatesController < ApplicationController

  def get_cities
    @cities = State.find(params[:state_id]).cities.order(:name)
    render json: @cities
  end

end
