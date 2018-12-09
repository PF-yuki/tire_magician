Rails.application.routes.draw do
  devise_for :users
  root :to => 'sizes#index'
  resources :reserves, :only => [:new,:create,:index,:show,:destroy]
  resources :sizes, :only => [:show]
  resources :users, :only => [:show, :edit,:update]
  get 'reserves/success' => 'reserves#success'
  get 'user/resignation' => 'users#resignnation'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
