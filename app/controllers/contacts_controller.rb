class ContactsController < ApplicationController
  def new
    @contact = Contact.new  #crea un objeto de contacto
  end
  
  def create
  end
end