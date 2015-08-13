Rails.application.routes.draw do

resources :cities do 
	collection do
		get 'search'
		get :autocomplete
	end
end

#cities routes
get 'cities/show', to: 'cites#show'
get 'cities/index', to: 'cities#index'
get 'cities/:id', to: 'cities#show'

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

#              Prefix Verb   URI Pattern                    Controller#Action
#         cities_show GET    /cities/show(.:format)         cites#show
#        cities_index GET    /cities/index(.:format)        cities#index
#                city GET    /cities/:id(.:format)          cities#show
#       search_cities GET    /cities/search(.:format)       cities#search
# autocomplete_cities GET    /cities/autocomplete(.:format) cities#autocomplete
#              cities GET    /cities(.:format)              cities#index
#                     POST   /cities(.:format)              cities#create
#            new_city GET    /cities/new(.:format)          cities#new
#           edit_city GET    /cities/:id/edit(.:format)     cities#edit
#                     GET    /cities/:id(.:format)          cities#show
#                     PATCH  /cities/:id(.:format)          cities#update
#                     PUT    /cities/:id(.:format)          cities#update
#                     DELETE /cities/:id(.:format)          cities#destroy
#              signup GET    /signup(.:format)              users#new
#             profile GET    /profile(.:format)             users#show
#               users POST   /users(.:format)               users#create
#               login GET    /login(.:format)               sessions#new
#              logout GET    /logout(.:format)              sessions#destroy
#            sessions POST   /sessions(.:format)            sessions#create
#               posts GET    /posts(.:format)               posts#index
#                     POST   /posts(.:format)               posts#create
#            new_post GET    /posts/new(.:format)           posts#new
#           edit_post GET    /posts/:id/edit(.:format)      posts#edit
#                post GET    /posts/:id(.:format)           posts#show
#                     PATCH  /posts/:id(.:format)           posts#update
#                     PUT    /posts/:id(.:format)           posts#update
#                     DELETE /posts/:id(.:format)           posts#destroy
#                root GET    /                              home#index
