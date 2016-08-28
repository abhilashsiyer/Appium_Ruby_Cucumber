require 'yaml'
require 'active_support/all'
class HomeApp #-- This class has all the elements to access page

  def initialize
    puts "Application launched"
    $yml = YML.new

  end
#-- This method finds element with name, Returns No Element error if element is not found
  def element_name(str)
    find_element(:name, str)
  end
#-- This method finds element with id, Returns No Element error if element is not found.
  def element_id(str)
    find_element(:id, str)
  end
#----  def check for content(str), This method checks elements of a list scrollable view and then opens the requested detail. This is a work around for scroll_to method of appium
#----  that is currently not functioning with Appium.
#----  However, with an error input, this method fails, Still working around for that.
#----  usablity -- reference to home then access checkforcontent("String to be touched")
  def checkforcontent(str)
  names = find_element(:id, $yml.read_yaml('Outerframe_id'))
  list_name = names.find_elements(:id,$yml.read_yaml('Details_id'))
  list_timestamp = names.find_elements(:id,$yml.read_yaml('Date_id'))
  found = false
  first = ""
  k= 0
  until first == list_timestamp[0].text
    first = list_name[0].text
    j =0
    while j < list_name.size
      if list_name[j].text.include? str
        found = true
        list_name[j].click
        sleep(10)
        break
      end
      j = j+1
    end
    k =k+j
    if found
      return k
      break
    end
    swipe start_x: 500, start_y: 2100, end_x: 500, end_y: 800, duration: 0
    list_name = names.find_elements(:id,$yml.read_yaml('Details_id'))
    list_timestamp = names.find_elements(:id,$yml.read_yaml('Date_id'))
    end
  end
#---This method checks if element exists and then returns the text value else nil
  def read_element_text_byid(id)
    if element_id(id).text != nil
      return element_id(id).text
    else
      return nil
    end
  end
end
