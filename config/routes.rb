Rails.application.routes.draw do
  root 'products#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :products do
    resource :vote, only: [:create, :destroy]
    resources :comments, only: [:create]
  end
    # get '/products', to: 'products#index'
    # get '/products/new', to: 'products#new', as: 'new_product'
    # post '/products', to: 'products#create'
    # get '/products/:id', to: 'products#show'
    # get 'products/:id/edit', to: 'products#edit'
    # patch '/products/:id', to: 'products#update'
    # delete '/products/:id', to: 'products#destroy'

  resources :users, only: [:new, :create]
end
