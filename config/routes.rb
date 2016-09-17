Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.

  resources :user_profiles do
    resources :images
  end
  resources :houses do
    resources :requests
  end

  resources :questions do
    resources :compatibilities  
  end

end
