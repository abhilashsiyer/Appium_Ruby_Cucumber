Feature: As a developer I’m interested in following the development of the project

  Scenario: Display project information
    Given I have the application launched
    And I check if application is launched appropriately
    Then I check for "Project title"

  Scenario: Display latest project activity
    Given I have the application launched
    Then I check for "latest project activity"


