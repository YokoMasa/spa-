Rails.application.routes.draw do
  root to: 'home#index'
  namespace :api do
    resources :doctor
  end
end
