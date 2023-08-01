class FacultyController < ApplicationController
  def faculty
  end

  def listoffaculty
    @user = User.all
  end
  
end
