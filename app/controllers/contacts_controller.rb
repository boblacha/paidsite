class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to new_contact_path, notice:  "Submitted successfully."
    else
      redirect_to new_contact_path, alert:  "An error occured."
    end
  end
  
  private
    def contact_params
      params.require(:contact).permit(:name, :email, :website, :timeline, :budget, :comments)
    end
end