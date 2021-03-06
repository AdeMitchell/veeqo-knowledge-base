class DepartmentsController < ApplicationController
  def index
    @departments = Department.all
  end
  
  def angular
    @angular_department_items = Department.angular
  end
  
  def new
    @department = Department.new
    3.times { @department.technologies.build }
  end
  
  
  
  
  def create
    @department = Department.new(department_params)

    respond_to do |format|
      if @department.save
        format.html { redirect_to departments_path, notice: 'Department was successfully published.' }
      else
        format.html { render :new }
      end
    end
  end
  
  def edit
    @department = Department.find(params[:id])
  end
  
  def update
    @department = Department.find(params[:id])
    respond_to do |format|
      
      if @department.update(department_params)
        format.html { redirect_to departments_path, notice: 'Department was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end
  
  def show
    @department = Department.find(params[:id])
  end
  
  def destroy
    @department = Department.find(params[:id])
    @department.destroy
    respond_to do |format|
      format.html { redirect_to departments_url, notice: 'Department was removed.' }
    end
  end
  
  private
  
  def department_params
    params.require(:department).permit(:title,
                                       :subtitle, 
                                       :body, 
                                       technologies_attributes: [:name]
                                      )
  end
  
end
