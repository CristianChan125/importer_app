Rails.application.routes.draw do
  devise_for :users
  resources :imports, only: [:new, :create]
  root "imports#new"
end
