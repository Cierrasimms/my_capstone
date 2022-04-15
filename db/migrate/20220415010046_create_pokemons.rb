class CreatePokemons < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemons do |t|
      t.integer :hp
      t.integer :attack
      t.integer :defense
      t.integer :spec_attack
      t.integer :spec_defense
      t.integer :speed
      t.integer :total
      t.string :type
      t.string :species
      t.string :height
      t.string :weight

      t.timestamps
    end
  end
end
