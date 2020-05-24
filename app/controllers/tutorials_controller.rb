class TutorialsController < ApplicationController

	def index
		render json: Tutorial.all, except: [:created_at, :updated_at]
	end
	
end
