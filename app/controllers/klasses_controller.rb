class KlassesController < ApplicationController
  before_action :logged_in_user #, only: [:index, :edit, :update, :destroy]
  
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
    @klasses_grid = initialize_grid(Klass,
    order:           'day',
    order_direction: 'asc'
    )
  end
  
  def show
    @klass = Klass.find(params[:id])
    @user = User.find(params[:id])
  end
  
  def destroy
    Klass.find(params[:id]).destroy
    flash[:success] = "Class deleted"
    redirect_to klasses_url
  end
  
  def edit
    @klass = Klass.find(params[:id])
  end
  
  def update
    @klass = Klass.find(params[:id])
    if @klass.update_attributes(klass_params)
      flash[:success] = "Class updated"
      redirect_to @klass
    else
      render 'edit'
    end
  end
  
  private
  
  def klass_params
      params.require(:klass).permit(:klass_name, :day, :user_id)
  end
    
  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Please log in"
      redirect_to login_url
    end    
  end
  
end
