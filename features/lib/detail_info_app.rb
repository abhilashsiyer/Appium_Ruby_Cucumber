class DetailsInfoApp#-- Contains method to read details
  # This method reads all the elements for details in the commit screen
  def details_check(text)
    return find_element(:id,($yml.read_yaml(text))).text
  end
end