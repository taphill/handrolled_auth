Rails.application.routes.draw do
  root 'root#index'

  get 'signup', to: 'users#new'
  post 'signup', to: 'users#create'

  resources :users, only: [:show]
end
