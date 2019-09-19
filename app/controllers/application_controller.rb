class ApplicationController < ActionController::Base

	before_action :ensure_login
	helper_method :logged_in? , :logged_in_employee , :logged_in_store , :logged_in_employee_role


	protected
		def ensure_login
			redirect_to login_path unless session[:employee_id]
		end

		def logged_in?
			session[:employee_id]
		end

		def logged_in_employee
			@logged_in_employee ||= Employee.find(session[:employee_id])
		end

		def logged_in_store
			@logged_in_store ||= Store.find(session[:store_id])
		end

		def logged_in_employee_role
			@logged_in_employee_role ||= Employee.find(session[:employee_id]).role 
		end


end
