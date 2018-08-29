class StudentsController < ApplicationController
  def new
    @school_class = SchoolClass.new
  end

  def create

  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
  end

  def valid_params(*args)
    params.require(:school_class).permit(*args)
  end
end
