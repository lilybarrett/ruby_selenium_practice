require './rpo_page'
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox
driver.navigate.to "https://www.launchacademy.com/"

describe RPOPage do
  page = RPOPage.new(driver)
  driver.navigate.to page.url

  it "has the right title" do
    expect(page.title).to eq(page.expected_title)
  end

  it "has an 'Apply' button" do
    expect(driver.find_element(:css => "a.btn-pink").text).to eq('Apply')
  end

  # it "displays the text 'Learn to Code the Human Way, Apply Today'" do
  #   expect(driver
  #   .find_element(:css => "div.video-cta")
  #   .text).to eq('Learn to Code\nThe Human Way\nApplyToday')
  # end
end

driver.close
