Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :kitchens, only: [ :index, :show ] do
    resources :bookings, only: [ :new, :create, :index ]
    resources :reviews
  end
  # root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
