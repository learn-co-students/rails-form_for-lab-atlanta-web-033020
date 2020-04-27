class StudentsController < ApplicationController
    def new
        @student = Student.new
    end

    def create
        @student = Student.create(strong_params(:first_name, :last_name))
        redirect_to student_path(@student)
    end

    def show
        @student = find_by(params[:id])
    end

    def edit
        @student = find_by(params[:id])
    end

    def update
        @student = find_by(params[:id])
        @student.update(strong_params(:first_name, :last_name))
        redirect_to student_path(@student)
    end

    private
        def strong_params(*args)
            params.require(:student).permit(*args)
        end

        def find_by(id)
            Student.find_by(id: id)
        end
end