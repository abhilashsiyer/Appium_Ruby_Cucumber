require 'rubygems'
require 'appium_lib'
require 'selenium-webdriver'
require 'test/unit/assertions'
require 'watir-webdriver'

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
   $browser = Watir::Browser.new :chrome
   sleep(12)
   $browser.goto "https://github.com/ustwo/US2FormValidator"
   sleep(19)
   @selenium_driver = @appium_driver.start_driver
   sleep(13)
  }
 After { 
  $driver.driver_quit
  $browser.close }