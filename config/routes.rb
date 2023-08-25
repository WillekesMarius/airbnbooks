Rails.application.routes.draw do
  root to: 'books#index'

  devise_for :users
  resources :books do
    resources :rentals, only: %i[new create]
  end

  resources :dashboards, only: %i[index]
  resources :rentals, only: %i[destroy]
  resources :profiles, only: %i[index]
end
