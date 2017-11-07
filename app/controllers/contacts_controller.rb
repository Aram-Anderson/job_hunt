class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    contact = Contact.new(contact_params)
    if contact.save
      flash[:notice] = "Contact"
    end
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    contact = Contact.find(params[:id])
    if contact.update(contact_params)
      flash[:notice] = "Contact successfully updated!"
    else
      flash[:notice] = "Unable to update contact. Try again."
    end
    redirect_to job_path(contact.job)
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :phone, :email, :image_url)
  end
end
