Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :animals do
    resources :bookings, only: [:create,:delete]
  end
  resources :dashboard
  resources :bookings, only: :show
end
