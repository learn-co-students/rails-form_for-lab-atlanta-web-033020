class SchoolClassesController < ApplicationController

  def show
    @class = SchoolClass.find_by(id: params[:id])
  end

  def new
    @class = SchoolClass.new
  end
  
  def create
    @class = SchoolClass.create(class_params)
    redirect to school_class_path(@class)
  end

  def update
  end

end
