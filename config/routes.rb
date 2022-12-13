Rails.application.routes.draw do
  get 'contact', to: redirect("https://www.commshare.com/")
  get 'about', to: "pages#about"
  get 'error', to: "pages#error"

  resources :play_lists
  devise_for :users
  resources :homes
  root 'homes#index'
  get "*path", to: redirect("/error")
end
