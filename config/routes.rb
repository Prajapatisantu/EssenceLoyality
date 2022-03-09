Rails.application.routes.draw do
  # get 'customer_webhooks/customer_creation'
  post '/webhooks/customers_create', to: 'customer_webhooks#customer_creation'
  require 'sidekiq/web'
  get '/items', to: 'items#index'
  root :to => 'home#index'
  get '/products', :to => 'products#index'
  mount ShopifyApp::Engine, at: '/'
  mount Sidekiq::Web => '/sidekiq'
  resources :rewardpoints
  get '/customer_list', to: 'rewardpoints#customer_list'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
