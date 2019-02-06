Rails.application.routes.draw do
  get 'cities/index'
  get 'cities/show'
  get 'gossips/index'
  get 'team', to: 'teams#index'
  get 'contact', to:'contacts#index'
 
  get'/', to: "static#welcome"
  post '/', to: 'gossips#index'
  get '/welcome/:first_name', to: 'static#welcome', as: 'welcome'
  get '/profils/:id/', to: 'profiles#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :gossips 
  resources :cities
end

