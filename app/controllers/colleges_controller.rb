class CollegesController < ApplicationController
	
	def new
		@college = College.new
	end

  def index
    @colleges = College.all
  end

	def create
    @college = College.new(college_params)
 
   if @college.save
     redirect_to @college
   else
  	 render 'new'
   end
  end

  def edit
    @college = College.find(params[:id])
  end

  def show
    @college = College.find(params[:id])
  end

  def update
    @college = College.find(params[:id])
 
    if @college.update(college_params)
      redirect_to @college
    else
      render 'edit'
    end
  end

  def destroy
    @college = College.find(params[:id])
    @college.destroy
 
    redirect_to colleges_path
  end

  private
  def college_params
    params.require(:college).permit(:college, :address, :percentage, :email, :contactnumber)
  end
end
