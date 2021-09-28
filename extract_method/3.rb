def send_correct_page
  safari_and_small_window = "You are using the Safari browser in a small window."
  alt_browser_or_large_window = "You are not using the Safari browser or have a big window."

  if safari? && small_window?
    return safari_and_small_window
  else
    return alt_browser_or_large_window
  end
end

private

def safari?(browser)
  browser.type == "Safari"
end

def small_window?(window)
  window.size < "768px"
end

