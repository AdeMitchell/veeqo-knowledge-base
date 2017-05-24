class DepartmentsController < ApplicationController
  def index
    @departments = Department.all
  end
  
  def new
    @department = Department.new
  end
  
  
  def create
    @department = Department.new(params.require(:department).permit(:title, :subtitle,  :body))

    respond_to do |format|
      if @department.save
        format.html { redirect_to departments_path, notice: 'Department was successfully published.' }
      else
        format.html { render :new }
      end
    end
  end
  
end
