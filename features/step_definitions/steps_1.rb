Given /^I have the application launched$/ do
  puts 'Given'
  $view = Home.new
  $yml = YML.new
end

And /^I check if application is launched appropriately$/ do
  if $view.element("US2FormValidator").text == "US2FormValidator"
    assert(true, "Application is launched")
  else
    assert(false, "Application is not launched")
  end
end

Then /^I check for "([^"]*)"$/ do |text|
  if text == "Project title"
    if $view.element($yml.read_yaml('Project_name')).text != nil
      puts "PASS"
      assert(true, "Project Title")
      puts $view.element($yml.read_yaml('Project_name')).text
    else
      assert(false, "No first element")
    end
  elsif text == "latest project activity"
    if $view.element_id( $yml.read_yaml('Details_id')).text != nil
      assert(true, "First element")
      puts $view.element_id($yml.read_yaml('Details_id')).text
    else
      assert(false, "No first element")
    end
  end
end


