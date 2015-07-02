class StudentsController < ApplicationController
  before_action :logged_in_user
  
  def show
    @student = Student.find(params[:id])
  end
  
  def index
    @students_grid = initialize_grid(Student)
  end
  
  def new
    @student = Student.new
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
    #if @student.klass_id
    #  @klass = User.find(@klass.user_id)
    #end
  end
  
  private
  
  def student_params
    params.require(:student).permit(:name, :klass_id)
  end
  
  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Please log in"
      redirect_to login_url
    end
  end
  
end
