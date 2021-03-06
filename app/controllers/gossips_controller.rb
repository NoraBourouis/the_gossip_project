class GossipsController < ApplicationController
  before_action :authenticate_user , only: [:new, :create, :edit, :update, :destroy]

  def index
      @firstname= params[:firstname]
      @gossip = Gossip.all
  end

  def show
    @id_potin = params[:id].to_i
    @comments = Comment.where(gossip_id: params[:id], commentable_type: nil)
    @sub_comments = Comment.where(gossip_id: params[:id], commentable_type: 'Comment')
  end

  def new
    @gossipnew = Gossip.new
    # Méthode qui crée un potin vide et l'envoie une view qui affiche le formulaire pour 'le remplir' (new.html.erb)
  end

  def create
    puts params
    @gossipnew = Gossip.new('title' => params[:title],
                     'content' => params[:content],
                     'user_id'=> session[:user_id])

    if @gossipnew.save
      flash[:success] = "Woohoo, merci pour ce gossip!"
      redirect_to gossips_path 
      puts "gossip created"
    else
      flash[:notice] = "Pas de potins...Faut écrire correctement roh. "
      render 'new'
    end
   
  end

  def edit
    @gossip = Gossip.all
    @gossip = Gossip.find(params[:id])
  
  end

  def update
    @gossip = Gossip.find(params["id"])
    if  @gossip.update(title: params["title"], content: params["content"])
      redirect_to gossip_path(@gossip.id), notice: "Gossip successfully modified! "
    else 
      render 'edit'
    end

  end


  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to gossips_path

  end

  private
  
  def authenticate_user
      unless current_user
        flash[:danger] = "Please log in."
        redirect_to new_session_path
      end
  end
 

end
