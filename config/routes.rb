Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  root "restaurants#index"
  resources :restaurants, only: [:index, :show]

  namespace :admin do
    resources :restaurants
    resources :categories
    root "restaurants#index"
  end
end
