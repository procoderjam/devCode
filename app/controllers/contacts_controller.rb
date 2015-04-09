class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end #End of creating a new "Contact" object
  
  def create
    @contact = Contact.new(contact_params)
    
    if @contact.save
      flash[:success] = 'Message sent.'
      redirect_to new_contact_path
    else
      flash[:danger] = 'Error occured message has not been sent!'
      redirect_to new_contact_path
    end
  end #End of create new contact action
  
  private
    def contact_params
      params.require(:contact).permit(:name, :email, :comments)
    end #End of private section of code
  
  
end #End of Contacts controller
