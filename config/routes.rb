Rails.application.routes.draw do
  post "/graphql", to: "graphql#execute"
  resources :users, only: [:create]
  resources :restaurants, only: [:index, :show] do
    resources :reviews, only: [:create]
  end
  resources :sessions, only: [:create]
  get "/me", to: 'sessions#autologin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
