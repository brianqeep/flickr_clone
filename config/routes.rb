Rails.application.routes.draw do
  devise_for :users
  resources :clients
  root to: "clients#index"
end
