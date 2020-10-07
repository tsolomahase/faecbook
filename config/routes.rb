Rails.application.routes.draw do
  root "users#new"
  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  resources :feeds do
    collection do
      post :comfirm
      patch :confirm
      end
    end
  end
