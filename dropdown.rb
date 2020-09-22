require "selenium-webdriver"
require "webdrivers"

driver = Selenium::WebDriver.for :chrome
driver.get 'http://www.practiceselenium.com/check-out.html?fbclid=IwAR1aKweazf4TFEqtjXZr2vGOHk3UT4lKm-QiRo4E4d8KyEaLl3SQ_tsSOjs'
option = driver.find_element(:id, 'card_type')
puts option.inspect
select_object = Selenium::WebDriver::Support::Select.new(option)
select_object.select_by(:text,'Visa')
sleep 2
driver.quit