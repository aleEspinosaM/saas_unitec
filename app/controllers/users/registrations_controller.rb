class Users::RegistrationsController < Devise::RegistrationsController
    
  def create
    super do |resource| #importing the creat action from devise
      if params[:plan] #estamos checando si hay algun from con planes
        resource.plan_id = params[:plan] #si es verdadero lo guardamos en resource.planid que es una columna en la tabla users
        if resource.plan_id == 2 #si el id es 2 significa que es pro account y lo guardamos
          resource.save_with_payment
        else
          resource.save
        end
      end
    end
  end
  
end