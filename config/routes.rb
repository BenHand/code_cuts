Rails.application.routes.draw do
  resources :lessons
  resources :forums
  devise_for :users
  resources :users
  get "/home", to: "welcome#home"
  root to: "welcome#home"
end
