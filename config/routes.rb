Rails.application.routes.draw do
  root :to => 'cars#index'
  resources :users, :only => [:index, :new, :create]
  resources :cars
  resources :trims
  resources :manufacturers
  resources :engines

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
