class JobsController < ApplicationController

  def show
    @job = current_user.jobs.find(params[:id])
    remote_ip = request.remote_ip
    @company = CompanyService.new.execute(@job.company, remote_ip)
  end

  def new
    @job = Job.new
    @statuses = Status.all
  end

  def create
    job = current_user.jobs.new(job_params)
    if job.save
      flash[:notice] = "#{job.title} added!"
    else
    end
    redirect_to dashboard_index_path
  end

  private

  def job_params
    params.require(:job).permit(:company, :title, :city, :state,
      :salary, :post_url, :status_id)
  end
end
