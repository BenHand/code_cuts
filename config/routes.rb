Rails.application.routes.draw do
  resources :forums
  devise_for :users
  root to: "forums#index"
end
