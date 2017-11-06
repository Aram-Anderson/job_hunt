class DashboardController < ApplicationController
  def index
    @jobs = current_user.jobs.page(params[:page])
  end
end
