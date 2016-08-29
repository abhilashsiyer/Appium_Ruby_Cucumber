When /^I navigate to see information about "([^"]*)"$/ do |text|
  index = $view.checkforcontent(text)
  $browse.click_commit(index)
end

Then /^I check commit information "([^"]*)"$/ do |text|
  $view = DetailsInfoApp.new
  $browse = CommitListInfo.new
  detail = $view.details_check(text)
  detail.equal?$browse.check_details(text)
  puts detail
end

And /^I check "([^"]*)" did the changes$/ do |text|
  detail = $view.details_check(text)
  detail.equal?$browse.check_details(text)
  puts detail
end

