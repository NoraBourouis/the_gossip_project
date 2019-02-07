class UsersController < ApplicationController
  def show
  @user = User.find(params[:id])
  end

  def update
    @user =  User.find(params[:id])
    #user_params = params.require(:user).permit(:first_name, :email, :last_name, :password)
    @user.update('first_name' => params[:first_name],'email' => params[:email], 'last_name' => params[:last_name], 'password' => params[:password])
  end
  
  def new
    @user= User.new
  end

  def create
    puts "lol def create"
    puts params
    @user = User.create('first_name' => params[:first_name],'email' => params[:email], 'last_name' => params[:last_name], 'password' => params[:password], 'city_id' => params[:city_id])

    if @user.save
      flash[:success] = "Bienvenue parmi nous !"
      redirect_to gossips_path 
      puts "inscription réalisée"
    else
      puts @user.errors
      flash[:notice] = "Renseigne tous les champs. "
      render 'new'
    end

  end

  
end
