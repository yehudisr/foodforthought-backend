Rails.application.routes.draw do
  resources :food_receivers
  resources :food_orders
  # resources :food_listings
  resources :food_givers
  resources :sms_messages, only: [:create]

  post '/login', to: 'food_givers#login'
  get '/food_givers/:id', to: 'food_givers#show'
  post '/signup', to: 'food_givers#create'

  get '/food_listings', to: 'food_listings#index'
  get '/food_listings/:id', to: 'food_listings#show'
  post '/food_listings', to: 'food_listings#create'
  delete '/food_listings/:id', to: 'food_listings#destroy'
  get '/decrease/:id', to: 'food_listings#amount_decrease'

  post '/order', to: 'food_receivers#order'
  post '/register', to: 'food_receivers#create'

  post '/food_orders', to: 'food_orders#create'


 


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
