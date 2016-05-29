class Team < ActiveRecord::Base
  has_many :members
  has_many :fixtures

  has_attached_file :team_photo, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :team_photo, :content_type => /\Aimage\/.*\Z/
end
