class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string :club_name
      t.string :domain_name
      t.string :seo_keywords
      t.string :club_description
      t.string :club_email

      t.timestamps null: false
    end
  end
end
