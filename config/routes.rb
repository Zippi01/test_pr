Rails.application.routes.draw do
  resources :type_restaurants
  resources :types
  resources :cities
  resources :restaurants
    root 'restaurants#index', as: 'home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
