Rails.application.routes.draw do

  get 'cities/show'

  get 'cities/index'

resources :cities, only: [:show]

#user routes
get '/signup', to: 'users#new'
get '/profile', to: 'users#show'
resources :users, only: [:create]

#session routes
get "/login", to: "sessions#new"
get "/logout", to: "sessions#destroy"
post "/sessions", to: "sessions#create"

# posts routes
resources :posts

root 'home#index'

end
