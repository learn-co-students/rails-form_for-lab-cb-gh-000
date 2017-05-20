class SchoolClassesController < ApplicationController
  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.create(school_class_params(:title, :room_number))
    redirect_to school_class_path(@school_class)
  end

  private

  def school_class_params(*args)
    params.require(:school_class).permit(*args)
  end
end