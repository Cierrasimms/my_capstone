class CreateTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :teams do |t|
      t.integer :team_id
      t.integer :team_rank
      t.string :description
      t.integer :pokemon_id

      t.timestamps
    end
  end
end
