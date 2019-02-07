class CommentsController < ApplicationController
	before_action :authenticate_user , only: [:new, :create, :edit, :update, :destroy]
	
	def index

	end
	
	def show
  	@gossip = Gossip.find(params[:id])
  	@comment = Comment.find(params[:id])
	end
	
	def new
  	@comment = Comment.new
	end
	
  def create
  	@comment = Comment.new('content' => params[:content], 'user_id' => session[:user_id], 'gossip_id' => params[:gossip_id])
  	if @comment.save # essaie de sauvegarder en base @gossip
  	  # si ça marche, il redirige vers la page d'index du site
  	  flash[:success] = "Merci pour votre commentaire!" #hash depuis l'application.html.erb
  	  redirect_to gossip_path(params[:gossip_id])
  	else
  	  flash[:danger] = "YOO, écris correctement, sans contenu c'est pas un commentaire" #idem
  	  render 'new'
  	end
	end
	

  def edit
		@comment = Comment.find(params[:id])

	end
	

  def update
  	@comment = Comment.find(params[:id])
  	if @comment.update('content' => params[:content])
  	  # si ça marche, il redirige vers la page d'index du site
  	  flash[:success] = "Update bien pris en base" #hash depuis l'application.html.erb
  	  redirect_to gossip_path(@comment.gossip.id)
  	else
  	  # sinon, il render la view new (qui est celle sur laquelle on est déjà)
  	  flash[:danger] = "edite un commentaire, c'est pas facile" #idem
  	  render :edit
  	end
	end
	

  def destroy
  	@comment = Comment.find(params[:id])
    @comment.destroy
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
