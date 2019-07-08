Rails.application.routes.draw do
  get 'genres/add_profile'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  get 'terms', to: 'terms#index' 
  root to: 'home#index'
  resources :movies
  resources :genres do
    member do
      get 'add_profile'
    end
  end
  resources :profiles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
