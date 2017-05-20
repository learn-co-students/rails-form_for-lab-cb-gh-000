class SchoolClassesController < ApplicationController
  def new
    @school_class = SchoolClass.new
  end

  private

  def school_class_params(*args)
    params.require(:school_class).permit(*args)
  end
end