# Understands sending a user an email
class UserContacter
  def send_email_to(user)
    mail = Mail.new(Emailer.new((user)))
    mail.send_message
  end
end

#Understands sanitising a user's email
class Sanitiser
  def sanitised_email_for(user)
    email.strip
  end
end