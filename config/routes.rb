Rails.application.routes.draw do
  root to: 'questions#index'

  devise_for :users, controllers: { registrations: "registrations" }

  resources :courses, except: [:index]
  resources :subjects, except: [:index]
  resources :questions

  resources :admin, only: [:index, :destroy]
end
