# Understands detecting the browser type and sending the user a message
class BrowserMessage
  def tell_browser_type(browser)
    browser_detector = BrowserDetection.new
    safari_message = "You are using the Safari browser."
    not_safari_message = "You are not using a Safari browser."

    puts browser_detector.safari?(browser) ? safari_message : not_safari_message
  end

end

class BrowserDetection
  def safari?(browser)
    browser.type == "Safari"
  end
end