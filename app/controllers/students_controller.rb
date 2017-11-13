class StudentsController < ApplicationController
  def new

  end

  def create
    @student = Student.create(
    first_name: params[:student_first_name],
    last_name: params[:student_last_name]
    )

    @student.save
    redirect_to student_path(@student)
  end

  def show
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(params.require(:student))
    redirect_to student_path(@student)
  end

  def edit
    @student = Student.find(params[:id])
  end
end
