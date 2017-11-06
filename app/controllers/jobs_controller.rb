class JobsController < ApplicationController

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

  def show
    @job = current_user.jobs.find(params[:id])
    # @company = CompanyService.new.execute(@job)
    response = Faraday.get("http://api.glassdoor.com/api/api.htm?v=1&format=json&t.p=219053&t.k=jsB14GOP6yI&action=employers&q=#{@job.company}&userip=#{request.remote_ip}&useragent=chrome/%2F4.0").body
    parsed_response = JSON.parse(response, symbolize_names: true)
    @company = Company.new(parsed_response[:response][:employers].first)
  end

  private

  def job_params
    params.require(:job).permit(:company, :title, :city, :state, :salary, :post_url, :status_id)
  end
end
