Rails.application.routes.draw do
  resources :songs
  get 'commonshare', to: redirect("https://www.commshare.com/")
  get 'contact', to: "pages#about"
  get 'about', to: "pages#about"
  get 'error', to: "pages#error"

  devise_for :users
  resources :homes
  root 'homes#index'
  get "*path", to: redirect("/error")
end
