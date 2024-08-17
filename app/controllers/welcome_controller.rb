require 'rubygems'
require 'watir'
class WelcomeController < ApplicationController
  def index
  end

  def google
       b = Watir::Browser.new
       b.goto 'http://google.com'
       b.text_field(:name=>'q').set params[:s]
       b.button(:name=>'btnG').click
       b.h3s(:class=>'r')[0].click


  end
end
