Rails.application.routes.draw do
  devise_for :users
  root :to => 'sizes#top'
  get '/reserves/success' => 'reserves#success', as: :reserves_success
#  post '/reserves/success' => 'reserves#create'
  get '/users/resignation' => 'users#resignnation', as: :users_resignation
  get '/sizes/select' => 'sizes#select', as: :sizes_select
#  post '/sizes/:id/reserves/:id' => 'reserves#show', as: :reserves_show
#  post '/reserves/:id/confirm' => 'reserves#confirm_c'
  resources :reserves, :only => [:new,:create,:show,:destroy]
  resources :sizes, :only => [:show,:index]
  resources :manufactures, :only => [:show]
  resources :users, :only => [:show,:edit,:update]
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
