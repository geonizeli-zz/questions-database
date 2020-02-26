Rails.application.routes.draw do
  root to: 'questions#index'

  devise_for :users, controllers: { registrations: "registrations" }

  resources :courses
  resources :subjects
  resources :questions

  resources :admin, only: [:index, :destroy]
end
