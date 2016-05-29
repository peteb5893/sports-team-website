class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :team_name
      t.string :captain
      t.string :vice_captain
      t.string :coach
      t.string :gender
      t.integer :player_count
      t.integer :reserve_count
      t.references :members, index: true, foreign_key: true
      t.string :team_description

      t.timestamps null: false
    end
  end
end
