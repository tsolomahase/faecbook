Rails.application.routes.draw do
  get 'sessions/new'
  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]
  resources :feeds do
    collection do
      post :confirm
      patch :confirm
    end
  end
  root to: "users#new"
end
