Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :cars do
    resources :bookings, only: [:create]
  end

  resources :users do
    resources :bookings
    resources :cars, get: ':user_id/cars', :as => 'carros' ,to: 'cars#mycars'
  end
end
