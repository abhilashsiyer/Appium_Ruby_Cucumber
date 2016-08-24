class YML
  # This method reads a YML file and returns the value for key elements
  def read_yaml(key)
    config = YAML.load_file("F:\\Cucumber\\standalone-cucumber-master\\features\\resources\\properties.yaml")
    return config[key]
  end
end