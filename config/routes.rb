Rails.application.routes.draw do
  resources :likes
  resources :comments
  resources :categories
  resources :users
  resources :posts
  resources :sessions, only: [:new, :create]

  root 'sessions#new'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
