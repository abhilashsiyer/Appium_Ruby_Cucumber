@Feature1
Feature: As a developer I’m interested in following the development of the project
  @Test1
  Scenario: Display project information
    Given I have the application launched
    And I should see application home screen
    When I check for "Project title"
    Then I should see Project Name

  @Test2
  Scenario: Display project information
    Given I have the application launched
    And I should see application home screen
    When I refresh the screen
    And I check for "Project first element"
    Then I should see latest activity


