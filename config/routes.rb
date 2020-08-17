Rails.application.routes.draw do
  resources :comments
  resources :reviews
  resources :users
  resources :movies
  get '/users/stay_logged_in', to: 'users#stay_logged_in'
  get '/users/:id', to: 'users#show'
  post '/login', to: 'users#login'
  post '/users', to: 'users#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
