require "selenium-webdriver"
require "webdrivers"

driver = Selenium::WebDriver.for :chrome
driver.get 'https://www.seleniumeasy.com/test/javascript-alert-box-demo.html?fbclid=IwAR0DtoulwxOav49SgnC4nr3wGZdKSqmg_tFO30GYZ7RkapliDmUHLE_wUeg'

#Alerts
alert_button = driver.find_element(:xpath, "//button[@class='btn btn-default']").click
sleep 2
driver.switch_to.alert.accept
#Confirm
alert_button = driver.find_element(:xpath, "//button[@class='btn btn-default btn-lg'][contains(text(),'Click me!')]").click
sleep 2
driver.switch_to.alert.dismiss
#Prompt
alert_button = driver.find_element(:xpath, "//button[contains(text(),'Click for Prompt Box')]").click
alert = driver.switch_to.alert.send_keys('selenium')
sleep 2
driver.switch_to.alert.accept

driver.quit