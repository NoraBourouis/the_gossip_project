Rails.application.routes.draw do
  get 'gossips/index'
  get 'team', to: 'teams#index'
  get 'contact', to:'contacts#index'
  get 'home', to: 'static#home'
  get'/', to: "static#welcome"
  post '/', to: 'static#home'
  get '/welcome/:first_name', to: 'static#welcome', as: 'welcome'

  get '/gossip/:id/', to: 'static#potin'
  get '/profils/:id/', to: 'profiles#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :gossips 
  
end

