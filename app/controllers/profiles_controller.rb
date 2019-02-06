class ProfilesController < ApplicationController
  def index
   
  end

  def show
    @id_user = params[:id]
  end  
end
