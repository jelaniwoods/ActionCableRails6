Rails.application.routes.draw do
  devise_for :users
  resources :contexts
  resources :messages
  resources :resources
  resources :enrollments
  root "landing#index"

  resources :messages, only: [:new, :create]
  get 'landing/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
