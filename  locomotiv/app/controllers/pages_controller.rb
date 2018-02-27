class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :accompagner]

  def home
    @projects= Project.all
  end


  def accompagner
  end

private
  def project_params
  params.require(:project).permit(:name, :domain)
end

end
