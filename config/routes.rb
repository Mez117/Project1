Rails.application.routes.draw do
  get 'trims/show'
  get 'trims/edit'
  get 'trims/new'
  get 'engines/index'
  get 'engines/show'
  get 'engines/edit'
  get 'engines/new'
  get 'engines/_form'
  get 'manufacturers/index'
  get 'manufacturers/show'
  get 'manufacturers/edit'
  get 'manufacturers/new'
  get 'manufacturers/_form'
  root :to => 'cars#index'
  resources :users, :only => [:index, :new, :create]
  resources :cars

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
