Rails.application.routes.draw do

  # get 'pages/home'
  
  root to: 'matches#show'

  devise_for :users
  resources :users do
    resources :matches
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
