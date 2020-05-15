class ProjectsController < ApplicationController


  def show
    @project = Project.find(params[:project_id])
    binding.pry
  end

end
