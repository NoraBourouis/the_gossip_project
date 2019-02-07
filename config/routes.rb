Rails.application.routes.draw do
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
  get 'team', to: 'teams#index'
  get 'contact', to:'contacts#index'
 
  get'/', to: "static#welcome"
  post '/', to: 'gossips#index'
  get '/welcome/:first_name', to: 'static#welcome', as: 'welcome'
  get '/profils/:id/', to: 'profiles#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :gossips 
  resources :cities
  resources  :comments
  resources :users
<<<<<<< HEAD
  resources :sessions, only: [:new, :create, :destroy]
=======
>>>>>>> 42f7f04a90c498655f718e3a564c807c3c4c05dd
end

