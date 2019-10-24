class TeamController < ApplicationController
  def member
    @member = Team.find(params[:id])
  end
end
