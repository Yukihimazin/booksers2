Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  resources :books, only: [:edit, :index, :show]
  resources :users, only: [:edit, :index, :show]

  get "/homes/about" => "homes#about", as: "about"
end
