 When /^I navigate to see information about "([^"]*)"$/ do |text| # With current code, error input is not handeled due to limitations with swipe and scroll.Ref to def checkforcontent for details.
  $view.checkforcontent(text).present?
end

Then /^I Check commit information in terms of "([^"]*)"$/ do |text|
  $view = Details.new
  $view.details_check(text)
end


