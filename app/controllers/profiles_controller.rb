class ProfilesController < ApplicationController
  def index
    @user = User.find(params['id'].to_i)
  end
end
