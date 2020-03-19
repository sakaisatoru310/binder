Rails.application.routes.draw do
  devise_for :users
  root to: "blog#index"
  resources :blog, only: [:new, :create, :show]
  resources :users, only: :show
end
