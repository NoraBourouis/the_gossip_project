class CitiesController < ApplicationController
	def index
		@cities = City.all
		params[:id] != "0"
		@city_id = City.find(params[:id_city].to_i)
		@gossip = Gossip.find(params[:id].to_i)
		@gossips = Gossip.all
		@gossips = []
		@city_id.users.each do |user|
			Gossip.where(user_id: user.id).each do |gossip|
				@gossips << gossip
			end
  end
end
 
end
