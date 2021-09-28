def tell_browser_type(browser)
  safari_message = "the Safari browser."
  not_safari_message = "a non-Safari browser."
  print_message(browser.type == "Safari" ? safari_message : not_safari_message)
end

def print_message(result)
  header = "You are using"
  puts "#{header} #{result}"
end

