Given /^I have the application launched$/ do
  puts 'Initiliazing'
  $view = Home.new
  $yml = YML.new

end

Then /^I should see application home screen$/ do
  $view.element_id($yml.read_yaml('Details_id')).present?
end

And /^I refresh the screen$/ do
  $view.element_id("com.ustwo.sample:id/commit_list_button_refresh").click
  puts "Refreshing the screen"
  sleep(15)

end

When /^I check for "([^"]*)"$/ do |text|
  if text == "Project title"
    $view.element_name($yml.read_yaml('Project_name')).present?
  elsif text == "latest project activity"
    $view.element_id($yml.read_yaml('Details_id')).present?
  end

end

Then /^I should see Project Name$/ do
  name = $view.element_name($yml.read_yaml('Project_name')).text
  puts "Project name is " + name
end

Then /^I should see latest activity/ do
  activity = $view.element_id($yml.read_yaml('Details_id')).text
  puts "Latest activity is " + activity
end