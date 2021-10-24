@Feature_home_master
Feature: As a developer I’m interested in following the development of the project
  @Title
  Scenario: Verify project name displayed in the application
    Given I have the application launched
    When I check for Project Title
    Then I should see Project Name as appeared in Github

  @Latest_activity
  Scenario: Verify latest commit activity displayed in the application
    Given I have the application launched
    When I refresh the screen
    And I click commit list at github website
    Then I should see latest activity as appeared in Github


