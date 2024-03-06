Rails.application.routes.draw do
  resources :items, only: [:index, :show, :edit, :update]
  resources :item2s, only: [:show, :edit, :update]


  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "items#index"
end
