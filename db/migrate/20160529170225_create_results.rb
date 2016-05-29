class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.string :teamsheet
      t.string :score
      t.string :type
      t.references :fixture, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
