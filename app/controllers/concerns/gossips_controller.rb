class GossipsController < ApplicationController
  def index
    @gossip = Gossip.find(params['id'].to_i)
    @user = User.find(params['id'].to_i)
  end

end