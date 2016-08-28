@Feature2
Feature: As a developer I’m interesting in finding more information about a specific change

  @Commit_info_all
  Scenario: Display commit information
    Given I have the application launched
    Then I should see application home screen
    When I navigate to see information about "Updating README"
    Then I Check commit information in terms of "name,email,time,details"