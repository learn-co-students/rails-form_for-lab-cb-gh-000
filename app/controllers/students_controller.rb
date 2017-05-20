class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  private

  def student_params(*args)
    params.require(:student).permit(*args)
  end
end