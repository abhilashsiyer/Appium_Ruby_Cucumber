class CommitListInfo #-- This class contains methods to check details in git commit web page

  def initialize
    puts "Initalise CommitListInfo"
  end
#-- This method takes the details from Github web page and returns the text
  def check_details(text)
    if text == "name"
      return $browser.a(:class, 'user-mention').text
    elsif text == "detail"
      return $browser.p(:class, 'commit-title').text
    end
  end


#-
end
