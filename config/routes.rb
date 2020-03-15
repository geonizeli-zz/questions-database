Rails.application.routes.draw do
  root to: 'questions#index'

  devise_for :users, skip: :registrations
  devise_scope :user do
    resource :registration,
      only: [:new, :create, :edit, :update],
      path: 'users',
      path_names: { new: 'sign_up' },
      controller: 'registrations',
      as: :user_registration do
        get :cancel
      end
  end

  resources :courses, except: [:index]
  resources :subjects, except: [:index]
  resources :questions

  resources :admin, only: [:index, :destroy]

  get '/admin/courses', to: 'admin#courses'
  get '/admin/access', to: 'admin#access'
end
