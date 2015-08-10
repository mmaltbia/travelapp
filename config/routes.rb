Rails.application.routes.draw do

#user routes
get '/signup', to: 'users#new'
get '/profile', to: 'users#show'
resources :users, only: [:create]

#session routes
get "/login", to: "sessions#new"
get "/logout", to: "sessions#destroy"
post "/sessions", to: "sessions#create"

# posts routes
resources :posts, except: [:index]

root 'posts#index'

end

#          Prefix Verb URI Pattern                Controller#Action
#     session_new GET  /session/new(.:format)     session#new
#  session_create GET  /session/create(.:format)  session#create
# session_destroy GET  /session/destroy(.:format) session#destroy
#          signup GET  /signup(.:format)          users#new
#         profile GET  /profile(.:format)         users#show
#           users POST /users(.:format)           users#create
#            root GET  /                          posts#index
