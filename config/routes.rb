Rails.application.routes.draw do
  root "home_page#home"

  get "/signup", to: "users#new"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "/history", to: "history#index"
  get "/management", to: "home_page#management"
  post "/rate", to: "rater#create", as: "rate"

  resources :users
  resources :stories do
    member do
      get "chapters", to: "chapters#index"
    end
  end
  resources :chapters
  resources :search, only: :index
  resources :categories, only: %i(index show)
end
