Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root to: "kitchens#index"

  resources :kitchens, only: [ :index, :show ] do
    resources :bookings, only: [ :new, :create, :index ]
    resources :reviews
  end


  # root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
