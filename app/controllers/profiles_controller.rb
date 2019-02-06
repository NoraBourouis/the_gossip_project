class ProfilesController < ApplicationController
  def index
    @id_user = params[:id]
  end
end
