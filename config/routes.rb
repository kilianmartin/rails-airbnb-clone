Rails.application.routes.draw do
  devise_for :users,

  controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :users, only: [ :show ]
  root to: "kitchens#index"

  mount Attachinary::Engine => "/attachinary"
  resources :kitchens do

    resources :bookings, only: [ :new, :create, :index, :show ]
    resources :reviews
  end


  # root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
