Rails.application.routes.draw do
  devise_for :users
  root to: "blog#index"
  resources :blog do
    resources :blog, only: [:new, :create, :show]
    collection do
      get 'search'
    end
  end
  resources :users, only: :show
end
