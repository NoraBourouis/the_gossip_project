class StaticController < ApplicationController
  def home
    @firstname= params[:firstname]
  end

  def potin
    @id_potin = params[:id].to_i
  end

  def welcome
    puts params
    @firstname = params["firstname"]
    puts "c'est fini"
  end
end
