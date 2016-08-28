Given /^I have the application launched$/ do
  puts 'Initiliazing'
  $view = HomeApp.new
  $yml = YML.new
  $browse = HomeWeb.new

end

When /^I refresh the screen$/ do
  $view.element_id("com.ustwo.sample:id/commit_list_button_refresh").click
  puts "Refreshing the screen"
end

When /^I check for Project Title$/ do
    $view.element_name($yml.read_yaml('Project_name')).present?
end

And /^I click commit list at github website$/ do
  $browse.click_commit
  sleep(15)
  $browse = CommitList.new
end

Then /^I should see Project Name as appeared in Github$/ do
  name = $view.element_name($yml.read_yaml('Project_name')).text
  name.equal?$browse.project_name_check
  puts "Project name is " + name
end

Then /^I should see latest activity as appeared in Github$/ do
  activity = $view.element_id($yml.read_yaml('Details_id')).text
  activity.equal?$browse.first_element_name
  puts "Latest activity is " + activity
end