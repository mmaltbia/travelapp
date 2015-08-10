Rails.application.routes.draw do
  
#user routes
get '/signup', to: 'user#new'
get '/profile', to: 'user#show'
resources :users, only: [:create]

root 'posts#index'
end
