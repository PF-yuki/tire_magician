Rails.application.routes.draw do
  devise_for :users
  root :to => 'sizes#top'
  get '/users/resignation' => 'users#resignnation', as: :users_resignation
  resources :reserves, :only => [:show,:destroy]
  resources :sizes, :only => [:show,:index] do
    get  '/reserves/new' => 'reserves#new', as: :reserves_new
    post '/reserves' => 'reserves#create'
  end
  resources :manufactures, :only => [:show]
  resources :users, :only => [:show,:edit,:update]
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
