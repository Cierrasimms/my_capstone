class PokemonsController < ApplicationController
  def index
    pokemons = Pokemon.all
    render json: pokemons.as_json
  end

  def create
    pokemon = Pokemon.new(
      name: params[:name],
      pokemon_type: params[:pokemon_type],
      species: params[:species],
      height: params[:height],
      weight: params[:weight],
      hp: params[:hp],
      attack: params[:attack],
      defense: params[:defense],
      spec_attack: params[:spec_attack],
      spec_defense: params[:spec_defense],
      speed: params[:speed],
      total: params[:total]
    )
    pokemon.save
    render json: pokemon.as_json
  end

  def show
    pokemon = Pokemon.find_by(id: params[:id])
    render json: pokemon.as_json
    puts "DEBUG: this is Pokemon #{pokemon.id}"
  end

  def update
    pokemon = Pokemon.find_by(id: params[:id])
    pokemon.name = params[:name] || pokemon.name
    pokemon.pokemon_type = params[:pokemon_type] || pokemon.pokemon_type
    pokemon.species = params[:species] || pokemon.species
    pokemon.height = params[:height] || pokemon.height
    pokemon.weight = params[:weight] || pokemon.weight
    pokemon.hp = params[:hp] || pokemon.hp
    pokemon.attack = params[:attack] || pokemon.attack
    pokemon.defense = params[:defense] || pokemon.defense
    pokemon.spec_attack = params[:spec_attack] || pokemon.spec_attack
    pokemon.spec_defense = params[:spec_defense] || pokemon.spec_defense
    pokemon.speed = params[:speed] || pokemon.speed
    pokemon.total = params[:total] || pokemon.total
    pokemon.save
    render json: pokemon.as_json
  end

  def destroy
    pokemon = Pokemon.find_by(id: params[:id])
    pokemon.destroy
    render json: {message: "Pokemon successfully destroyed."}
  end
end

