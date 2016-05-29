class AddPhotoToTeam < ActiveRecord::Migration
  def self.up
    change_table :teams do |t|
      t.attachment :team_photo
    end
  end

  def self.down
    drop_attached_file :teams, :team_photo
  end
end
