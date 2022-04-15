Rails.application.routes.draw do
  get "/pokemon" => "pokemons#index"
  post "/pokemon" => "pokemons#create"
  get "/pokemon/:id" => "pokemons#show"
  patch "/pokemon/:id" => "pokemons#update"
  delete "/pokemon/:id" => "pokemons#destroy"
end
