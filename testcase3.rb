require "selenium-webdriver"
require "webdrivers"

driver = Selenium::WebDriver.for :chrome
driver.get 'https://www.google.com/'
driver.manage.window.resize_to(1366,768)
puts driver.title
sleep 2

driver.quit