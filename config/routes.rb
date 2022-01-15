Rails.application.routes.draw do
  devise_for :users, :skip => [:registrations]
  namespace :user do
    root 'recipes#index'
  end
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :recipes do
    resources :dishes, only: :create
    resources :recipe_ingredients, only: %i[index create]
  end

  resources :restaurants, only: %i[show index]
  resources :dishes, only: %i[edit update show index]
end
