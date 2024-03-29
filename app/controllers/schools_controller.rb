class SchoolsController < ApplicationController
  def index
    @schools = School.all
  end

  def show
    @school = School.find(params[:id])
  end

  def edit
    @school = School.find(params[:id])    
  end

  def new
    @school = School.new
  end

  def create
    school = School.new(school_params)
    if school.save
      redirect_to schools_path
    else
      render :new
    end
  end

  def destroy
    School.find(params[:id]).destroy
    redirect_to schools_path
  end

  def update
    @school = School.find(params[:id])
    if @school.update(school_params)
      redirect_to school_path(@school)
    else
      render :edit
    end
  end

  private
  def school_params
    params.require(:school).permit(:full_name, :abbreviation)
  end     

end
