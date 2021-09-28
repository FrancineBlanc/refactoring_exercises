def send_correct_page(browser, window)
  browser_type = browser.type
  window_size = window.size
  safari_and_small_window = "You are using the Safari browser in a small window."
  alt_browser_or_large_window = "You are not using the Safari browser or have a big window."
  
  if browser_type == "Safari" && window_size < "768px"
    return safari_and_small_window
  else
    return alt_browser_or_large_window
  end
end