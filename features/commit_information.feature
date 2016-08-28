@Feature_detailinfo
Feature: As a developer I’m interesting in finding more information about a specific change

  @Commit_info_all
  Scenario: Display commit information
    Given I have the application launched
    And I click commit list at gihub website
    When I navigate to see information about "Added analytics"
    Then I Check commit information in terms of "detail"
