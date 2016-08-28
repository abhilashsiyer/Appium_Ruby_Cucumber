require 'rubygems'
require 'appium_lib'
require 'selenium-webdriver'
puts "ABHI"

desired_caps = {  
   caps: {  
      platformName: 'Android',  
      platformVersion: '8.1',  
      deviceName: 'Nexus6P',  
      appPackage: 'com.ustwo.sample', 
	  appActivity: 'com.ustwo.sample.CommitListActivity'
   }  
}  

# dr = WebDriver.new();
# AndroidDriver.new(new URL("http://127.0.0.1:4723/wd/hub"), capabilities);
 @appium_driver = Appium::Driver.new(desired_caps) 
 
 @selenium_driver = @appium_driver.start_driver
 
 Appium.promote_appium_methods Object
 
 sleep(5)
print 'ABHI'

names = find_element(:id, "com.ustwo.sample:id/commit_list_listview_commits")
list_name = []
list_name = names.find_elements(:id,"com.ustwo.sample:id/commit_list_row_textview_message")
puts list_name[].txt

 #elemen
 
 driver_quit
 
 
 
 
 

 
 
 
 