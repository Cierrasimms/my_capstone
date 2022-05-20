class ChangeTeamTable < ActiveRecord::Migration[7.0]
  def change
    add_column :teams, :user_id, :integer
    remove_column :teams, :team_rank, :integer
    remove_column :teams, :description, :string
    remove_column :teams, :pokemon_team_id, :string
  end
end
