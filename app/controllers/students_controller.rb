class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def index
    @students = Student.all
  end

  private

  def student_params(*args)
    params.require(:student).permit(*args)
  end
end