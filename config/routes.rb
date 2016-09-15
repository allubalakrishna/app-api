Rails.application.routes.draw do
  namespace :api, defaults: { format: :json }, path: '/api/v1/'  do
    scope module: :v1 do
      resources :posts
    end
  end
  resources :posts
end