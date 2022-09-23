class ContactsController < ApplicationController
  def index
  end
  
  def new
   @contact = Contact.new
  end

  def create
    @contact = Contact.create(contact_params)
    if @contact.save
      flash.notice = "created!"
      redirect_to contacts_path
    else
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name,:email,:content)
  end
end
