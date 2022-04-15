class PokemonSerializer < ActiveModel::Serializer
  attributes :id, :name, :pokemon_type, :species, :height, :weight, :hp, :attack, :defense, :spec_attack, :spec_defense, :speed, :total, :images
end
