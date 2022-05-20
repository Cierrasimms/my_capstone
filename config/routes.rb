Rails.application.routes.draw do
  get "/pokemon" => "pokemons#index"
  post "/pokemon" => "pokemons#create"
  get "/pokemon/:id" => "pokemons#show"
  patch "/pokemon/:id" => "pokemons#update"
  delete "/pokemon/:id" => "pokemons#destroy"

  ### Users
  post "/users" => "users#create"

  ### Sessions
  post "/sessions" => "sessions#create"

  get "/team" => "team#index"

  post "/team" => "team#create"

  delete "/team/:id" => "team#destroy"
end
