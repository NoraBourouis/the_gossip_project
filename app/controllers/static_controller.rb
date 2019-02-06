class StaticController < ApplicationController
  def home
  @firstname= params[:first_name]
  end

  def gossip
    @gossipfind = Gossip.find(params['id'].to_i)
    @user = User.find(params['id'].to_i)
  end

  def welcome
    puts params
    @firstname = params["first_name"]
    puts "c'est fini"
  end
end
