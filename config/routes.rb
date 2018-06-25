Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "restaurants#index"
  resources :restaurants, only: [:index, :show]

  namespace :admin do
    resources :restaurants
    root "restaurants#index"
  end

end
