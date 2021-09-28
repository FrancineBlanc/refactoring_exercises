class Mail
  attr_reader :email
  def initialize(email, fancy = false)
    @email = email
    @fancy = fancy
  end

  def send_message
    website = "http://mixmax.com"
    key = "f20506xx808c"
    message = "Welcome to MyProduct"
    fancy_message = "#{message}, fancy person!"
    if fancy
      MailServer.connect(website, api_key: key).send_message({ to: email, body: fancy_message })
    else
      MailServer.connect(website, api_key: key).send_message({ to: email, body: message })
    end
  end
end