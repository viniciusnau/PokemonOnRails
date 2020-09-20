Rails.application.routes.draw do
  resources :trainers
  resources :pokemons
  resources :players
  resources :pokeusers
  get "/" => "trainers#index"

end

