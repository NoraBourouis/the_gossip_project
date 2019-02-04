Rails.application.routes.draw do
  get 'team', to: 'static#team'
  get 'contact', to:'static#contact'
  get 'home', to: 'static#home'
  get'/', to: "static#welcome"
  post '/', to: 'static#home'
  
  get '/welcome/:first_name', to: 'static#welcome', as: 'welcome'
  get '/gossips/:id/', to: 'static#gossips'
  get '/profils/:id/', to: 'static#profiles'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
