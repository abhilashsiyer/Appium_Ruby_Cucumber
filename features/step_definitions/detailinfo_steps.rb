When /^I navigate to see information about "([^"]*)"$/ do |text|
  index = $view.checkforcontent(text)
  $browse.click_commit(index)
end

Then /^I Check commit information in terms of "([^"]*)"$/ do |text|
  $view = DetailsInfoApp.new
  $browse = CommitListInfo.new
  detail = $view.details_check(text)
  detail.equal?$browse.check_details(text)
  puts detail
end


