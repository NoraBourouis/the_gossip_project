class StaticController < ApplicationController

  def welcome
    puts params
    @firstname = params["firstname"]
    puts "c'est fini"
  end

end
