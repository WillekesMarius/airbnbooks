Rails.application.routes.draw do
  root to: 'books#index'

  devise_for :users
  resources :books, only: %i[index show new create] do
    resources :rentals, only: %i[new create]
  end

  resources :dashboards, only: %i[index]
  resources :profiles, only: %i[index]
end
