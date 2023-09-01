Rails.application.routes.draw do
  resources :publications
  resources :images
  resources :departaments
  resources :clients
  resources :buildings
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "publications#index"
end
