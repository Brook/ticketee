class ProjectsController < ApplicationController
  def index
    
  end
  
  def new
    @project = Project.new
  end
  
  def create
    # p params #to inspect the params in server tab
    # Which is the equivilent of puts params.inspect
    @project = Project.new(params[:project])
    @project.save
    flash[:notice] = "Project has been created."
    redirect_to @project
    # or instead of the above two lines
    # redirect_to @project, :notice => "Project has been created."
    # or
    #     redirect_to @project, 
    #       :alert => "Project has not been created."
    #     or
    #     redirect_to @project, 
    #       :flash => { :success => "Project has been created."}
    
  end
  
  def show
    @project = Project.find(params[:id])
  end
end
