Rails.application.routes.draw do
=begin  
  get 'sessions/new'
  get 'users/create'
  get 'comments/show'
  get 'comments/create'
  get 'comments/edit'
  get 'comments/update'
  get 'comments/destroy'
  get 'cities/index'
  get 'cities/show'
  get 'gossips/index'
=end
  get 'team', to: 'teams#index'
  get 'contact', to:'contacts#index'
  get'/', to: "static#welcome"
  post '/', to: 'gossips#index'
  get '/profils/:id/', to: 'profiles#show'
=begin 
  get '/welcome/:first_name', to: 'static#welcome', as: 'welcome'
  
=end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #resources :team, only: [:index]
  #resources :contact, only: [:index]
  resources :gossips do
    resources :comments
  end
  resources :cities
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
end

