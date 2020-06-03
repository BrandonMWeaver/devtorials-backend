class SessionsController < ApplicationController

	def create
		admin = Administrator.find_by(username: params[:username])
		if (admin && admin.authenticate(params[:password]))
			session[:admin_id] = admin.id
			render json: admin, except: [:password_digest, :created_at, :updated_at]
		else
			render json: nil
		end
	end

	def destroy
		session.delete(:admin_id)
		render json: nil
	end

	def get_current_admin
		if logged_in?
			render json: current_admin, except: [:password_digest, :created_at, :updated_at]
		else
			render json: nil
		end
	end

end
