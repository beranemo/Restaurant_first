Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  resources :restaurants, only: [:index, :show] do
    resources :contents , only: [:create, :destroy]
  end

  resources :users, only: [:show, :edit , :update]

  resources :categories, only: :show
  root "restaurants#index"

  namespace :admin do
    resources :restaurants
    resources :categories
    root "restaurants#index"
  end

end
