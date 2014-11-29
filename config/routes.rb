Rails.application.routes.draw do
  
  # Static pages
  root  'home#index'
  get   'about', to: 'home#about'


  # REST routes
  resources :posts do
    resources :comments, only: :create
  end


  # DEVISE routes
  devise_for :users, controllers: { :sessions => "sessions" }

end
