Rails.application.routes.draw do
  resources :trainers
  resources :pokemons
  resources :players

  get "/" => "trainers#index"
  root "pokeusers#index"
end

