class GossipsController < ApplicationController
  def index
   
  end

  def show
   
  end

  def new
    @gossipnew = Gossip.new
    # Méthode qui crée un potin vide et l'envoie une view qui affiche le formulaire pour 'le remplir' (new.html.erb)
  end

  def create
    puts params
    @gossipnew = Gossip.new('title' => params[:title],
                     'content' => params[:content],
                     'user_id'=> rand(User.first.id..User.last.id))

    if @gossipnew.save
      flash[:success] = "Woohoo, merci pour ce gossip!"
      redirect_to home_path 
      puts "gossip created"
    else
      flash[:notice] = "Pas de potins...Faut écrire correctement roh. "
      render 'new'
    end
    # Méthode qui créé un potin à partir du contenu du formulaire de new.html.erb, soumis par l'utilisateur
    # pour info, le contenu de ce formulaire sera accessible dans le hash params (ton meilleur pote)
    # Une fois la création faite, on redirige généralement vers la méthode show (pour afficher le potin créé)
  end




end
