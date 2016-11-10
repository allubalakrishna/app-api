require 'resque/server'
Rails.application.routes.draw do
  resources :movies
  resources :purchases
  resources :users
  resources :items
  namespace :api, defaults: { format: :json }, path: '/api/v1/'  do
    scope module: :v1 do
      resources :posts
    end
  end
  resources :posts
  mount Resque::Server.new, at: "/resque"
end