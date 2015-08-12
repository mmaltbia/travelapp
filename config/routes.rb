Rails.application.routes.draw do

#cities routes
get 'cities/show', to: 'cites#show'
get 'cities/index', to: 'cities#index'

resources :cities, only: [:show]

resources :cities do 
	collection do
		get 'search'
		get :autocomplete
	end
end

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
