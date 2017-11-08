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

  def edit
    @job = current_user.jobs.find(params[:id])
    @statuses = Status.all
  end

  def update
    job = current_user.jobs.find(params[:id])
    if job.update(job_params)
      flash[:notice] = "#{job.title} updated."
      redirect_to dashboard_index_path
    else
      @statuses = Status.all
      render :edit
    end
  end

  def destroy
    job = current_user.jobs.find(params[:id])
    if job.delete
      flash[:notice] = "#{job.title} deleted."
    else
      flash[:notice] = "Job not deleted.Try again"
    end
    redirect_to dashboard_index_path
  end


private

def job_params
  params.require(:job).permit(:company, :title, :city, :state, :description,
    :salary, :post_url, :status_id)
  end
end
