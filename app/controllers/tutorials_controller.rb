class TutorialsController < ApplicationController

	def index
		render json: Tutorial.all, include: { lessons: { except: [:created_at, :updated_at] } }, except: [:created_at, :updated_at]
	end
	
end
