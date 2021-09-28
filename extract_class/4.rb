# Understands sending a fancy or non-fancy message to the user
class Mail
  def initialize(email, fancy = false)
    @email = email
    @fancy = fancy
  end

  def send_message
    mail_server = Connect.new.connect
    mail_server.send_message({ to: @email, body: body })
  end

  private

  def body
    base_body = "Welcome to MyProduct"
    @fancy ? "#{ base_body }, fancy person!" : base_body
  end
end

#Understands connecting to a mail server
class Connector
  def connect
    MailServer.connect("http://mixmax.com", api_key: "f20506xx808c")
  end
end