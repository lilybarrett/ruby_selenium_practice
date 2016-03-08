require 'rubygems'
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox
driver.get "http://hyper-local.herokuapp.com/"

element = driver.find_element :name => "city_query"
element.send_keys "boston"

select = driver.find_element(:tag_name, "select")
all_options = select.find_elements(:tag_name, "option")
all_options.each do |option|
  puts "Value is: " + option.attribute("value")
  option.click
end

driver.find_element(:name, "commit").click

puts "Page title is #{driver.title}"

driver.quit
