Rails.application.routes.draw do
  devise_for :users,

  controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :users, only: [ :show ]
  root to: "pages#home"

  mount Attachinary::Engine => "/attachinary"

  resources :kitchens, only: [ :index, :show, :create, :edit, :update ] do
    resources :bookings, only: [ :new, :create, :index, :show ]
    resources :reviews
  end



  # root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
