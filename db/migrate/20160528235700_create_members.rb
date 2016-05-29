class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :username
      t.string :password_digest
      t.string :forename
      t.string :surname
      t.string :nickname
      t.string :gender
      t.date :date_of_birth
      t.string :email
      t.string :mobile
      t.string :about_me
      t.string :playing_position
      t.string :team
      t.string :shirt_number
      t.string :availability
      t.integer :match_count
      t.integer :goal_count
      t.integer :man_of_the_match_count
      t.string :membership_status
      t.string :user_permissions

      t.timestamps null: false
    end
  end
end
