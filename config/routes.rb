Rails.application.routes.draw do
  resources :courses
  resources :subjects
  root to: 'questions#index'

  devise_for :users, controllers: { registrations: "registrations" }

  resources :questions
  resources :admin
end
