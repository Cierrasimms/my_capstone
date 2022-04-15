class DeleteTeamIdAddPokemonTeamId < ActiveRecord::Migration[7.0]
  def change
    remove_column :teams, :team_id, :string
    add_column :teams, :pokemon_team_id, :string
  end
end
