class KlassesController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
  
  def new
    @klass = Klass.new
  end
  
  def create
    @klass = Klass.new(klass_params)
    if @klass.save
      flash[:success] = "Class created!"
      #redirect_to klass_path
      redirect_to action: "index"
    else
      render 'new'
    end
  end
  
  def index
    @klasses = Klass.all
  end
  
  def show
    @klass = Klass.find(params[:id])
  end
  
  def destroy
    Klass.find(params[:id]).destroy
    flash[:success] = "Class deleted"
    redirect_to klasses_url
  end
  
  private
  
  def klass_params
      params.require(:klass).permit(:klass_name, :day)
  end
    
  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Please log in"
      redirect_to login_url
    end    
  end
  
end
