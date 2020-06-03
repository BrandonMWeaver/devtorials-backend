class ApplicationController < ActionController::API
	include ActionController::Cookies

	def current_admin
		return @current_admin ||= Administrator.find_by(id: session[:admin_id])
	end

	def logged_in?
		return !!current_admin
	end

end
