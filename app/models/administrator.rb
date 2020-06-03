class Administrator < ApplicationRecord
	has_secure_password

	has_many :tutorials

	validates :username, uniqueness: true
end
