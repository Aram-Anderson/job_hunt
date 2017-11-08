class JobsController < ApplicationController

  def show
    @job = Job.find(params[:id])
    @keywords = WatsonService.new.get_analysis(@job.description)
    @company = CompanyService.new.execute(@job.company, request.remote_ip)
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
      :salary, :description, :post_url, :status_id)
    end
  end
