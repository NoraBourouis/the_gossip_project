class StaticController < ApplicationController
  def team
  end

  def contact
  end

  def home
  @username = params["first_name"]
  end

  def welcome
    puts params
    @username = params["first_name"]
    puts "c'est fini"
  end
end
