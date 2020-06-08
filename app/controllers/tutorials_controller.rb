class TutorialsController < ApplicationController

	def index
		render json: Tutorial.all, include: { lessons: { except: [:created_at, :updated_at] } }, except: [:created_at, :updated_at]
	end
	
	def create
		if params[:tutorial_id]
			tutorial = Tutorial.find_by(id: params[:tutorial_id])
		else
			tutorial = Tutorial.new(
				administrator_id: current_admin.id,
				title: params[:title],
				language: params[:language],
				description: params[:description]
			)
		end
		lesson = Lesson.new
		lesson.file.attach(params[:file])
		tutorial.lessons << lesson
		lesson.save
		lesson.content = File.read(ActiveStorage::Blob.service.path_for(lesson.file.key))
		lesson.save
		tutorial.save
		render json: tutorial, include: { lessons: { except: [:created_at, :updated_at] } }, except: [:created_at, :updated_at]
	end

end
