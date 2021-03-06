Rails.application.routes.draw do

  # get 'pages/home'

    root to: 'days#index'


  devise_for :users

  resources :users do
    resources :matches
  end

  resources :profiles, only: [:new, :edit, :create, :update]

  resources :days

  namespace :api do
    resources :users
  end
  resources :pages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
