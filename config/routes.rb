Rails.application.routes.draw do
  root to: "blog#index"
  resources :blog, only: [:new, :create]
end
