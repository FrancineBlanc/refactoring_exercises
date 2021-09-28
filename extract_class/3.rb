# Understands giving the user the correct page
class BrowserPageChooser
  def send_correct_page(browser, window)
    browser_detector = BrowserDetector.new
    width_detector = WidthDetector.new

    is_safari = browser_detector.safari?(browser)
    is_small = width_detector.small?(window)

    safari_small_message = "You are using the Safari browser in a small window."
    not_safari_or_big_message = "You are not using the Safari browser or have a big window."

    is_safari && is_small ? safari_small_message : not_safari_or_big_message
  end
end

#Understands detecting the browser type
class BrowserDetector
  def safari?(browser)
    browser.type == "Safari"
  end
end

#Understands detecting the browser width
class WidthDetector
  def small?(window)
    window.size < "768px"
  end
end