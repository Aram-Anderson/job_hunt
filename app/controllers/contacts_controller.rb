class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    job = current_user.jobs.find(params[:job_id])
    contact = job.contacts.create(contact_params)
    if contact.save
      flash[:notice] = "Contact added!"
    end
    redirect_to job_path(job)
  end

  def edit
    job = Job.find(params[:job_id])
    @contact = job.contacts.find(params[:id])
  end

  def update
    job = current_user.jobs.find(params[:job_id])
    contact = job.contacts.find(params[:id])
    if contact.update(contact_params)
      flash[:notice] = "Contact successfully updated!"
    else
      flash[:notice] = "Unable to update contact. Try again."
    end
    redirect_to job_path(job)
  end

  def destroy
    job = current_user.jobs.find(params[:job_id])
    contact = job.contacts.find(params[:id])
    if contact.delete
      flash[:notice] = "#{contact.name} successfully deleted"
    else
      flash[:notice] = "There was a problem deleting this contact. Please try again"
    end
    redirect_to job_path(job)
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :phone, :email, :image_url)
  end
end
