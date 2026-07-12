Rails.application.routes.draw do
  namespace :admin do
    get "dashboard/index"
    resources :users, only: [:index, :update]
  end
  get "home/index"
  devise_for :users
  root "home#index"

  
  get "up" => "rails/health#show", as: :rails_health_check
end
