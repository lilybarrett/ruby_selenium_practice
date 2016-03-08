require 'rubygems'
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox
driver.get "http://google.com"

element = driver.find_element :name => "q"
element.send_keys "star wars"
element.submit

puts "Page title is #{driver.title}"

wait = Selenium::WebDriver::Wait.new(:timeout => 10)

puts "Test Passed 1" if wait.until {
  driver.find_element(:id, "logocont").displayed?
}

puts "Test Passed 2" if wait.until {
  driver.find_element(:css, "div.xpdopen").displayed?
}

puts "Page title is #{driver.title}"
driver.quit
