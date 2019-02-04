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
end
