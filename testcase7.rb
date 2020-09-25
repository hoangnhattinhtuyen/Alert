require "selenium-webdriver"
require "webdrivers"

driver = Selenium::WebDriver.for :chrome
driver.get 'https://itmscoaching.herokuapp.com/form'
driver.manage.window.resize_to(1366,768)
driver.find_element(id: 'first-name').send_keys('iTMS')
driver.find_element(id: 'last-name').send_keys('Coaching')
driver.find_element(id: 'job-title').send_keys('QA')
driver.find_element(id: 'radio-button-2').click
driver.find_element(id: 'checkbox-1').click
driver.find_element(css: 'option[value="2"]').click
driver.find_element(id: 'datepicker').send_keys (27/10/2025)
driver.find_element(css: '.btn.btn-lg.btn-primary').click
sleep 2

driver.quit