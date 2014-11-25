Rails.application.routes.draw do
  
  # Static pages
  root  'home#index'
  get   'about', to: 'home#about'


  # REST routes
  resources :posts


  # DEVISE routes
  devise_for :users, controllers: { :sessions => "sessions" }

end
