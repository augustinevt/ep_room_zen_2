Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.

  resources :user_profiles do
    resources :responses
    resources :images
  end
  resources :houses do
    resources :requests
    resources :responses
  end
  resources :requests do
    resources :comments
  end
end
