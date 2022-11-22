Rails.application.routes.draw do
  get 'contact', to: redirect("https://www.commshare.com/")
  get 'about', to: "pages#about"
  get 'error', to: "pages#error"

  resources :singers
  resources :play_lists
  devise_for :users
  resources :homes
  resources :songs
  root 'homes#index'
  get "*path", to: redirect("/error")
end
