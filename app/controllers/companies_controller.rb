class CompaniesController < ApplicationController

  def show
    @job = current_user.jobs.find(params[:id])
    remote_ip = request.remote_ip
    @company = CompanyService.new.execute(@job.company, remote_ip)
  end
end
