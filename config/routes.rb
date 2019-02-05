Rails.application.routes.draw do
  get 'gossips/index'
  get 'team', to: 'teams#index'
  get 'contact', to:'contacts#index'
  get 'home', to: 'static#home'
  get'/root', to: "static#welcome"
  post '/root', to: 'static#home'
  get '/welcome/:first_name', to: 'static#welcome', as: 'welcome'

  get '/gossips/:id/', to: 'gossips#index'
  get '/profils/:id/', to: 'profiles#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

