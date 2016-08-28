class CommitList #-- This class has methods to traverse through list of commits

  def initialize
    puts "Initialize CommitList"
  end
#-- This method returns text of the first element
  def first_element_name
    return $browser.as(:class, 'message')[0].text
  end
#-- This method clicks the commit for which detailed information is to be seen
  def click_commit(i)
    $browser.as(:class, 'message')[i].click
    sleep(15)
  end


#-
end
