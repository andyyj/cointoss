Rails.application.routes.draw do
  root 'coin_tosses#home'
  # resource :coin_tosses
  # root 'inventory_units#index'
  get '/coin_tosses', to: 'coin_tosses#home'
  get '/coin_tosses/new', to: 'coin_tosses#new'
  post '/coin_tosses/', to: 'coin_tosses#create'
  get '/coin_tosses/(:id)', to: 'coin_tosses#show', as: 'coin_toss'
  # get '/coin_tosses/(:id)/edit', to: 'coin_tosses#edit', as: 'edit_inventory_unit'
  # patch '/coin_tosses/(:id)', to: 'coin_tosses#update', as: 'update_inventory_unit'
  get '/coin_tosses/(:id)/toss_coin', to: 'coin_tosses#toss_coin', as: 'toss_coin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
