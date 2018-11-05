Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :pages, only: [:show]
  resources :products, only: [:index, :show]
  resources :line_items
  resources :carts
  resources :charges

  resources :search, only: [:index] do
    collection do 
      get 'results'
    end
  end
  
  get ':permalink', to: 'pages#permalink'
  get 'products', to: 'products#index'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  root to: 'pages#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
