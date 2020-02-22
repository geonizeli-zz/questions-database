Rails.application.routes.draw do
  devise_for :users

  resources :questions
  resources :admin

  root to: 'questions#index'
end
