Rails.application.routes.draw do
  resources :singers
  resources :play_lists
  devise_for :users
  resources :homes
  resources :songs
  root 'homes#index'
end
