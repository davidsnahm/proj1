Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers
  patch 'capture', to: 'pokemons#capture', as: 'capture'
  patch 'damage', to: 'pokemons#damage', as: 'damage'
  post '/pokemons', to: 'pokemons#create'
  get '/pokemons/new', to: 'pokemons#new'
end
