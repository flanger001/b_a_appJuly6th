class StudentsController < ApplicationController
  before_action :logged_in_user

  def index
    @students_grid = initialize_grid(Student)
  end
  
  def new
    @student = Student.new
    @enrollment = @student.enrollments.build
  end
  
  def create
    @student = Student.new(student_params)
    if @student.save
      flash[:success] = "Student created!"
      redirect_to action: "index"
    else
      render 'new'
    end
  end
  
  def show
    @student = Student.find(params[:id])
  end
  
  def edit
    @student = Student.find(params[:id])
  end
  
  def update
    @student = Student.find(params[:id])
    if @student.update_attributes(student_params)
      flash[:success] = "Student updated"
      redirect_to @student
    else
      render 'edit'
    end
  end
  
  private
  
  def student_params
    params.require(:student).permit(:name, :klass_ids => [])
  end
  
end
