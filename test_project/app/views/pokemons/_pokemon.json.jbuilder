json.extract! pokemon, :id, :name, :element, :created_at, :updated_at
json.url pokemon_url(pokemon, format: :json)
