class RegistrationsController < ApplicationController
	def new
		@user =User.new
		end

	def create
		@user =User.new(user_params)
		if @user.save
			if user_params[:role]=='Student'
				session[:user_id] = @user.id
				redirect_to sign_up_path, notice: "Sucessfully created Student account"
            end
            if user_params[:role]=='Faculty'
				session[:user_id] = @user.id
				redirect_to sign_up_path, notice: "Sucessfully created Faculty account"
            end


		else
		    render :new
		end
	end	    	   

    private

    def user_params
    	params.require(:user).permit(:email, :password, :password_confirmation, :role, :name, :issuingcap)
    end
end