class SessionsController < ApplicationController
	def new
	end

	def create
		user = User.find_by(email: params[:email])
		if user.present? && user.authenticate(params[:password])
			if user[:email]=='admin@gmail.com'
                  session[:user_id] = user.id
                  redirect_to admin_dashboard_path, notice: "Logged into admin  account"
            elsif user[:role]=="Student"
			session[:user_id] = user.id
			redirect_to students_student_path, notice: "Student Logged in Sucessfully"
		    elsif user[:role]=="Faculty"
			session[:user_id] = user.id
			redirect_to faculty_faculty_path, notice: "Faculty Logged in Sucessfully"
		    end

		else
		   flash[:alert] = "Invalid email or password"
		   render :new
		end   	
	end 


	def destroy
		session[:user_id] = nil
		redirect_to root_path, notice: "Logged Out"
	end
end