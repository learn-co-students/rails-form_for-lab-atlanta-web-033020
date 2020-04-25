class StudentsController < ApplicationController

  def show
    @student = Student.find_by(id: params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_params)
    redirect_to student_path(@student)
  end

  def edit
    @student = Student.find_by(student_params)
  end

  def update
    # @student.update(params.require(:student).permit(:first_name, :last_name))
    @student.update(student_params)
  end


  private

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end

end
