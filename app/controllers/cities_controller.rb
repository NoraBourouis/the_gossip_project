class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def show
    @id_city = params[:id].to_i
  end
end
