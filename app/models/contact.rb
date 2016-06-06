#todo el codigo que tenga que ver con el objeto de contacto va a ir aqui
class Contact < ActiveRecord::Base
    validates :name, presence: true
    validates :email, presence: true
    validates :comments, presence: true
end