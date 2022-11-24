class UserMailer < ApplicationMailer
  def notify_user(user)
    @user = user
    mail(
      to: @user.email, 
      subject: 'Bienvenido a la Nonna',
      content_type: "text/html",
      body: "<html><strong>Gracias por su registro #{user.name}! </strong></html>"
    )
  end
end
