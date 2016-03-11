require_relative 'site_element.rb'

browser = SiteElement.new("http://google.com")

browser.type_in("Star Wars")

browser.submit()

browser.results()

browser.quit()
