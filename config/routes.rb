Rails.application.routes.draw do
  root "users#new"
  get 'sessions/new'
  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]
  resources :feeds do
    collection do
      post :comfirm
      end
    end
  end
