def send_email_to(user)
  mail = Mail.new(email(user))
  mail.send_message
end

def email(user)
  email.strip
end