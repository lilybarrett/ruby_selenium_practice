class RPOPage

  def initialize(driver)
    @driver = driver
  end

#properties
  def url
    url="https://www.launchacademy.com/"
  end

  def expected_title
    expected_title = "Launch Academy: A Full-Stack Bootcamp"
  end

#locators
  def title
    title = @driver.title
  end

end
