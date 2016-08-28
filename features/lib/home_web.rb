class HomeWeb #-- This class has all the elements to access page

  def initialize
    puts "Initialize Web"
  end
#-- This method finds element with name, Returns No Element error if element is not found
  def project_name_check
    return $browser.h1.as[1].text
  end

  def click_commit
    $browser.li(:class, 'commits').click
  end
#-
end
