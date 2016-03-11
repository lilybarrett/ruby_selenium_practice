require 'rubygems'
require 'selenium-webdriver'

class SiteElement
  def initialize(url)
    @driver = Selenium::WebDriver.for :firefox
    @driver.get url
  end

  def type_in(string)
    @element = @driver.find_element :name => "q"
    @element.send_keys string
  end

  def submit()
    @element.submit
    puts "Page title is #{@driver.title}"
  end

  def results()
    @wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    puts "Test Passed 1" if @wait.until {
      @driver.find_element(:id, "logocont").displayed?
    }
    puts "Test Passed 2" if @wait.until {
      @driver.find_element(:css, "div.xpdopen").displayed?
    }
    puts "Page title is #{@driver.title}"
  end

  def quit()
    @driver.quit
  end
end
