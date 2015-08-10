Rails.application.routes.draw do
  
#user routes
get '/signup', to: 'user#new'
get '/profile', to: 'user#show'
resources :users, only: [:create]

# session routes
get '/login', to: 'sessions#new'
get '/logout', to: 'sessions#destroy'
#post '/sessions', to: 'sessions#create'
resources :sessions, only: [:create]

# posts routes
resources :posts, except: [:index]

root 'posts#index'

end
