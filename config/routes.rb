Rails.application.routes.draw do
  resources :categories
  root to: 'pages#home'

  devise_for :users

  resources :users, only: [:show]
  resources :events
  resources :profiles, only: [:new, :edit, :create, :update]
  resources :photos, only: [:destroy]

  resources :events do
    resources :registrations, only: [:create]
  end

  namespace :api do
    resources :events
  end

  get "about" => "pages#about"
  get "terms_and_conditions" => "pages#terms_and_conditions"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
