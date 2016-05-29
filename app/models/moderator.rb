class Moderator < ActiveRecord::Base
	has_secure_password

	validates :username, presence: true
	validates :forename, presence: true
	validates :surname, presence: true
	validates :password, presence: true

end
