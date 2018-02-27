class ProjectsController < ApplicationController
  before_action : set_project, only : [:show, :edit, :update, :destroy]

  def new
    @project = Project.new
  end

  def create
    @project = Project.create(project_params)
    if @project.save
      redirect_to_project_path(@project)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @project.update(params[:project])
    redirect_to_project_path
  end

  def destroy
    @project.destroy
    redirect_to projects_path
  end

  def index
    @projects = Project.all
  end

  def update
  end

  private

  def set_project
    @project = project.find(params [:id])
  end

  def project_params
    params.require(:project).permit(:name, :domain)

  end
