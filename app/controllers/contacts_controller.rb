class ContactsController < ApplicationController
  def new
    @contact = Contact.new  #crea un objeto de contacto
  end
  
  def create
    @contact = Contact.new(contact_params)
      if @contact.save
        name = params[:contact][:name]
        email = params[:contact][:email]
        body = params[:contact][:comments]
        ContactMailer.contact_email(name, email, body).deliver
        flash[:success] =  'Mensaje enviado :) '
        redirect_to new_contact_path
      else
        flash[:danger] = 'Ocurrio un error, tu mensaje no ha sido enviado :( '
        redirect_to new_contact_path
      end  
  end
  
  private
    def contact_params
      params.require(:contact).permit(:name, :email, :comments) #aqui envia los query string parameters del form anteriormente creado
    end               #:contacts :name y los demas datos del form          
end