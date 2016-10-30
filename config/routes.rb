Rails.application.routes.draw do
  devise_for :users, controllers: {omniauth_callbacks: "callbacks"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.

  root 'user_dashboards#show'

  get 'user_dashboard', to: :show, controller: 'user_dashboards'

  resources :user_profiles do
    member do
      get 'show_user_house'
    end
    resources :responses
    resources :images
  end
  resources :houses do
    collection do
      get 'search'
    end
    resources :requests
    resources :responses
    resources :images
  end
  resources :requests do
    resources :comments
  end
end
