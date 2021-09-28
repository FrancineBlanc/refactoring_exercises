def send_email_to(user)
  new_mail = Mail.new(user.email.strip)
  new_mail.send_message
end