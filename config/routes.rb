Rails.application.routes.draw do
  
  # Static pages
  root  'home#index'
  get   'about', to: 'home#about'


  # DEVISE routes
  devise_for :users, controllers: { :sessions => "sessions" }

  
  # REST routes

  resource :news_feed, controller: :news_feed, only: :show

  resources :users do
    resources :posts do
      resources :comments, only: :create
    end
  end



end
