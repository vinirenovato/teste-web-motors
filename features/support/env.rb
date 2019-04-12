require 'rubygems'
require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'pry'
require 'rspec'
require 'site_prism'


Capybara.register_driver :selenium do |app|
  caps = Selenium::WebDriver::Remote::Capabilities.chrome("chromeOptions" => {"args" => [ "start-maximized" ]})
  Capybara::Selenium::Driver.new(app, {:browser => :chrome, :desired_capabilities => caps})
end

Capybara.configure do |config|
  config.default_driver = :selenium
  config.default_max_wait_time = 10
end
