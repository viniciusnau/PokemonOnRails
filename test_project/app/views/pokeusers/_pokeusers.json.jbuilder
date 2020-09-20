json.extract! pokeuser, :id, :name, :email, :created_at, :updated_at
json.url pokeuser_url(pokeuser, format: :json)
