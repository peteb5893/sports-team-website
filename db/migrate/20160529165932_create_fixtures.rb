class CreateFixtures < ActiveRecord::Migration
  def change
    create_table :fixtures do |t|
      t.date :date
      t.references :team, index: true, foreign_key: true
      t.string :opposition
      t.string :match_type
      t.string :venue
      t.time :start_time
      t.string :meet_info

      t.timestamps null: false
    end
  end
end
