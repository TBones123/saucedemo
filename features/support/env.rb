# require "saucedemo"
require 'capybara/cucumber'
require 'capybara-screenshot/cucumber'
require 'require_all'
require 'rspec/expectations'
require 'selenium-webdriver'
require 'site_prism'

require_all 'lib/saucedemo/page_objects/sections/'
require_all 'lib/saucedemo/page_objects/pages/'

def options
  Selenium::WebDriver::Chrome::Options.new(args: %w[window-size=1200,1000])
end

Capybara.default_driver = :selenium
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end
Capybara.save_path = "screenshots/"
Capybara::Screenshot.autosave_on_failure=true
# Capybara::Screenshot.screen_shot_and_save_page
# Capybara::Screenshot.screen_shot_and_open_image
