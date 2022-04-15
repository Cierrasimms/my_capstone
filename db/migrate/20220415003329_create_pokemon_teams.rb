class CreatePokemonTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemon_teams do |t|
      t.integer :user_id
      t.integer :pokemon_id
      t.string :active
      t.integer :team_id

      t.timestamps
    end
  end
end
