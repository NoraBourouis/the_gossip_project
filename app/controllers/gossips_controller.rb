class GossipsController < ApplicationController
  def index
  end

  def show
    # Méthode qui récupère le potin concerné et l'envoie à la view show (show.html.erb) pour affichage
  end

  def create
    puts params
    @gossip = Gossip.new('title' => params[:title],
                     'content' => params[:content])
  
    if @gossip.save
      redirect_to show_path
      puts "gossip created"
    else
      render 'new'
    end
    # Méthode qui créé un potin à partir du contenu du formulaire de new.html.erb, soumis par l'utilisateur
    # pour info, le contenu de ce formulaire sera accessible dans le hash params (ton meilleur pote)
    # Une fois la création faite, on redirige généralement vers la méthode show (pour afficher le potin créé)
  end


  def new
    @gossip = Gossip.new('title' => params[:title],
      'content' => params[:content])
    # Méthode qui crée un potin vide et l'envoie une view qui affiche le formulaire pour 'le remplir' (new.html.erb)
  end

end
