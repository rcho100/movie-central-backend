Rails.application.routes.draw do
  # post "/api/v1/login", to: "api/v1/sessions#create"

  namespace :api do
    namespace :v1 do
      post "/login", to: "sessions#create"
      delete "/logout", to: "sessions#destroy"
      post "/signup", to: "users#create"
      get "/get_current_user", to: "sessions#get_current_user"
      get "/popular", to: "movies#popular"
      get '/top_rated', to: 'movies#top_rated' 
      resources :genres
      resources :movies
      resources :users
      resources :user_movies
      resources :movie_genres
    end
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
