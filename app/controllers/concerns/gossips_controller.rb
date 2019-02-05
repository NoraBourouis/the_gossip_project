class GossipsController < ApplicationController
  def gossips
    @gossip = Gossip.find(params['id'].to_i)
    @user = User.find(params['id'].to_i)
  end


end