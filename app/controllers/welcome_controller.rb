require 'rubygems'
require 'watir'
class WelcomeController < ApplicationController
  def index
  end

  def google
    Selenium::WebDriver::Chrome.path = '/usr/bin/chromium-browser'
driver = Selenium::WebDriver.for :chrome
b = Watir::Browser.new driver
  form = b.form(action: '/search')

b.goto 'http://google.com'
b.button(:id=>'L2AGLb').click
b.textarea(:name=>'q').value= params[:s]
begin
#form.input(value: 'Google Search').click
  b.send_keys :enter
  
sleep(5)
if params["image"] == "true"
b.divs(:role=>'listitem')[1].click
end
rescue => e
  puts e.message
end



  end
end
