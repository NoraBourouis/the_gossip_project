class StaticController < ApplicationController
  def team
  end

  def contact
  end

  def home
  @firstname= params[:first_name]
  end

  def welcome
    puts params
    @firstname = params["first_name"]
    puts "c'est fini"
  end

  def gossips
    @gossip = Gossip.find(params['id'].to_i)
    @user = User.find(params['id'].to_i)
  end

  def profiles
    @user = User.find(params['id'].to_i)
  end
end