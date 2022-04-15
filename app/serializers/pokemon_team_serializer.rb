class PokemonTeamSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :pokemon_id, :active, :team_id
end
