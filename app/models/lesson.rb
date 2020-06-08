class Lesson < ApplicationRecord
	belongs_to :tutorial

	has_one_attached :file
end
