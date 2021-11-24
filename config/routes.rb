Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :recipes do
    resources :dishes, only: :create
  end
  resources :restaurants, only: :show
  resources :dishes, only: %i[edit update show]
end
