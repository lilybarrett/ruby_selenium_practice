require 'rubygems'
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox
driver.get "http://developers.everyaction.com/"

driver.find_element(:css, "span.btn-text").click

element = driver.find_element :name => "developer[firstName]"
element.send_keys "Lily"
element = driver.find_element :name => "developer[lastName]"
element.send_keys "Barrett"
element = driver.find_element :name => "developer[email]"
element.send_keys "Lily@barrett.us"
element = driver.find_element :name => "developer[zipCode]"
element.send_keys "02134"
element = driver.find_element :name => "developer[organization]"
element.send_keys "Launch Academy"
element = driver.find_element :name => "developer[client]"
element.send_keys "Launch Academy"
element = driver.find_element :name => "developer[what]"
element.send_keys "An epic marketing tool to help make sure no one votes for Trump"

element =
  driver.find_element(:name => "developer[emailUpdates]", :value => "true").click

element =
  driver.find_element(:name => "developer[vanKey]", :value => "true").click

element =
  driver.find_element(:name => "developer[ngpKey]", :value => "true").click

element =
  driver.find_element(:name => "developer[tos]", :value => "true").click

driver.find_element(:class, "btn").click

puts "It worked!"
