class SessionsController < ApplicationController
  skip_before_action :ensure_login, only: [:new, :create]

  def new
  end

  def create

  	

  	employee = Employee.find_by(mobile: params[:mobile])
  	password = params[:password]


  	if employee && employee.authenticate(password)
  		session[:employee_id] = employee.id
  		session[:store_id]	= employee.store_id
  		store = Store.find_by(id: employee.store_id)
  		session[:employee_role] = employee.role

  	redirect_to store_customers_path(store), notice: employee.employee_name + store.store_name + employee.role

  	else

  		redirect_to login_path, notice: "Invalid Login Details"

  	end

  
  end

  def destroy

  	reset_session
  	redirect_to login_path, notice: "You have been logged out ...!"

  end
end
