Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :animals do
    resources :bookings, only: [:create,:delete]
  end
  get "/dashboard", to: "pages#dashboard"
  resources :bookings, only: [:show, :update]
end
