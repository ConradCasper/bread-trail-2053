Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  root 'posts#index'

  resources :categories
  resources :users
  resources :posts do
    resources :comments
      resources :likes
  end

  resources :sessions, only: [:new, :create]

  # root 'sessions#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
