require 'rubygems'
require 'watir'
Selenium::WebDriver::Chrome.path = '/usr/bin/chromium-browser'
driver = Selenium::WebDriver.for :chrome
b = Watir::Browser.new driver
  form = b.form(action: '/search')

b.goto 'http://google.com'
b.button(:id=>'L2AGLb').click
b.textarea(:name=>'q').value= "ruby on rails"
begin
form.input(value: 'Google Search').click
sleep(10)
rescue => e
  puts e.message
end
