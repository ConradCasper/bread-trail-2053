Rails.application.routes.draw do
  resources :likes
  resources :comments
  resources :categories
  resources :users
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
