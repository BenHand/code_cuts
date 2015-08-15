Rails.application.routes.draw do
  resources :lessons
  resources :forums
  devise_for :users
  resources :users

  root to: "forums#index"
end
