Rails.application.routes.draw do
  # post "/api/v1/login", to: "api/v1/sessions#create"

  namespace :api do
    namespace :v1 do
      post "/login", to: "sessions#create"
      resources :genres
      resources :movies
      resources :users
      resources :user_movies
      resources :movie_genres
    end
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
