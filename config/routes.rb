Rails.application.routes.draw do
  root to: 'books#index'

  devise_for :users
  resources :books do
    resources :rentals, only: %i[new create]
  end
end
