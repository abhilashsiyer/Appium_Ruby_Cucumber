Given /^I have application launched$/ do
  puts 'Given step2'
end

And /^I navigate to see information about "([^"]*)"$/ do |text| # With current code, error input is not handeled due to limitations with swipe and scroll.Ref to def checkforcontent for details.
  puts "And"
  if $view.checkforcontent(text) != nil
    assert(true, "Details available")
  else
    assert(false, "Details not available")
  end

end

Then /^I Check commit information in terms of "([^"]*)"$/ do |text|
  data = text.split(",")
  j = 0
  puts data.size
  while j < 4
    if data[j] == "name"
      if $view.read_element_text_byid("com.ustwo.sample:id/commit_detail_textview_name")!= nil
        puts $view.read_element_text_byid(($yml.read_yaml('Name_id')))
      else
        assert(false, "Null data")
      end
    else if data[j] == "email"
      $view.read_element_text_byid(($yml.read_yaml('email_id')))
      if $view.read_element_text_byid(($yml.read_yaml('email_id')))!= nil
        puts $view.read_element_text_byid(($yml.read_yaml('email_id')))
      else
        assert(false, "Null data")
      end
    else if data[j] == "time"
      if $view.read_element_text_byid(($yml.read_yaml('Name_id')))!= nil
        puts $view.read_element_text_byid(($yml.read_yaml('Name_id')))
      else
        assert(false, "Null data")
      end
    else if data[j] == "details"
      if $view.read_element_text_byid(($yml.read_yaml('Name_id')))!= nil
         puts $view.read_element_text_byid(($yml.read_yaml('Name_id')))
      else
         assert(false, "Null data")
      end
    else
      assert(false, "Element error")
    j= j+1

    end
    end
    end
    end
  end
end