class Tutorial < ApplicationRecord
	has_many :lessons

	belongs_to :administrator
end
