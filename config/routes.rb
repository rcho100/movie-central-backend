Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :genres
      resources :movies
      resources :users
      resources :user_movies
    end
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
