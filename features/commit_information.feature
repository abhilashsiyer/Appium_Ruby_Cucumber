Feature: As a developer I’m interesting in finding more information about a specific change

  @Test
  Scenario: Display commit information
    Given I have application launched
    And I navigate to see information about "Updating README"
    Then I Check commit information in terms of "name,email,time,details"


