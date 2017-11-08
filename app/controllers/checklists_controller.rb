class ChecklistsController < ApplicationController

  def new
    @checklist = Checklist.new
  end

  def create
    job = current_user.jobs.find(params[:job_id])
    job.checklists.create(checklist_params)
    redirect_to job_path(job)
  end

  def destroy
    job = current_user.jobs.find(params[:job_id])
    checklist = job.checklists.find(params[:id])
    checklist.delete
    redirect_to job_path(job)
  end

  private

  def checklist_params
    params.require(:checklist).permit(:task)
  end
end
