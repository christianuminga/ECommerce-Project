Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # get 'products/index'
  # get 'products/show'
  # get 'pages/index'
  # get 'page/index'
  
  get ':permalink', to: 'pages#permalink'

  root to: 'pages#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
