def tell_browser_type(browser)
  browser_type = browser.type
  safari = "You are using the Safari browser."
  non_safari = "You are using a non-Safari browser."
  if browser_type == "Safari"
    puts safari
  else
    puts non_safari
  end
end