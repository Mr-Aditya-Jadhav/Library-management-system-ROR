class StudentsController < ApplicationController
  def student
  end

  def listofstudents
    @user = User.all
  end

   

  
end
