class TeamSerializer < ActiveModel::Serializer
  attributes :id, :pokemon_team_id, :team_rank, :description, :pokemon_id
end
