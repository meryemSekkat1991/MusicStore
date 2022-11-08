Rails.application.routes.draw do
  devise_for :users
  resources :homes
  resources :songs
  root 'homes#index'
end
