Rails.application.routes.draw do
  resources :contexts
  resources :messages
  resources :resources
  resources :enrollments
  devise_for :users
  # root "landing#index"
  root "enrollments#new"

  resources :messages, only: [:new, :create]
  get 'landing/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
