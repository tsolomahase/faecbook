Rails.application.routes.draw do
  root to: "users#new"
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  resources :feeds do
    collection do
      post :confirm
      patch :confirm
      end
    end
  end
