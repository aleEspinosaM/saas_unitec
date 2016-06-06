class ContactMailer < ActionMailer::Base
  default to: 'alex.espinosadelosmonteros@gmail.com'
  def contact_email(name, email, body)
    @name = name
    @email = email
    @body = body
    mail(from: email, subject: 'devMatch comentarios')
  end
end