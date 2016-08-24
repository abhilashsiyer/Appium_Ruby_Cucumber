require 'rubygems'
require 'appium_lib'
require 'selenium-webdriver'
require 'test/unit/assertions'

# Capybara.configure do |config|
#   config.default_driver = :selenium
#   config.app_host   = 'http://www.google.com'
# end
# World(Capybara)
desired_caps = {
    caps: {
        platformName: 'Android',
        platformVersion: '8.1',
        deviceName: 'Nexus6P',
        appPackage: 'com.ustwo.sample',
        appActivity: 'com.ustwo.sample.CommitListActivity'
    }
}

@appium_driver = Appium::Driver.new(desired_caps)

Appium.promote_appium_methods Object

World Test::Unit::Assertions

sleep(5)

 Before {
   @selenium_driver = @appium_driver.start_driver
   sleep(20)
  }
 After { $driver.driver_quit }

