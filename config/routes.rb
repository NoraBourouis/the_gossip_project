Rails.application.routes.draw do
  get 'team', to: 'static#team'
  get 'contact', to:'static#contact'
  get 'home', to: 'static#home'
  post '/', to: 'static#home'
  get'/', to: "static#welcome"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
