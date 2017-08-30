class StudentsController < ApplicationController

def create
    @college = College.find(params[:college_id])
    @Student = @college.students.create(student_params)
    redirect_to college_path(@college)
  end
 
 def destroy
    @college = College.find(params[:college_id])
    @Student = @college.students.find(params[:id])
    @Student.destroy
    redirect_to college_path(@college)
  end
  
  private
    def student_params
      params.require(:student).permit(:Name, :age, :marks, :rollnumber)
    end

end
