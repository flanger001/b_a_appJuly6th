class GlcClassController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
  
  def new
    @glc_class = GlcClass.new
  end
  
  def create
    @glcclass = GlcClass.new(class_params)
    if @glcclass.save
      flash[:success] = "Class created!"
      redirect_to glcclasses_path
    else
      render 'new'
    end
  end
    
    def index
      @glcclasses = GlcClass.all
    end
    
    private
    
    def class_params
      params.require(:glcclass).permit(:class_name, :day)
    end
    
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in"
        redirect_to login_url
      end    
    end
  
end
