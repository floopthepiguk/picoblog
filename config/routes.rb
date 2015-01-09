Rails.application.routes.draw do
  
  get 'global_feed/show'

  # Static pages
  root  'home#index'
  get   'about', to: 'home#about'


  # DEVISE routes
  devise_for :users, controllers: { :sessions => "sessions" }

  
  # REST routes

  resource :news_feed, controller: :news_feed, only: :show

  resources :users do
    
    member do
      put :follow
      put :unfollow
    end

    resources :posts, controller: 'users/posts' do
      resources :comments, only: :create, controller: 'users/comments'
    end
  end



end
