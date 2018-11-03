Rails.application.routes.draw do
  get 'products/index'
  get 'products/show'
  get 'pages/index'
  get 'page/index'
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end