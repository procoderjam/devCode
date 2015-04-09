class ContactMailer < ActionMailer::Base
  default to: 'easycrom@gmail.com  '
  
  def contact_email(name, email, body)
    @name = name
    @email = email
    @body = body
    
    mail(from: email, subject: 'Contact Form Message')
  end #End of contact_email action
end #End of ContactMailer class
