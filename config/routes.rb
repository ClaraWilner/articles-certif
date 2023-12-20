Rails.application.routes.draw do
  get 'comments/new'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "articles#index"
  resources :articles do
    member do
      get :user
    end
    resources :comments, only: [:new, :create]
  end
  resources :comments, only: [:edit, :update, :destroy]
end
