@Feature_detail_info_Abhi
Feature: As a developer I’m interesting in finding more information about a specific change

  @Commit_info_all_Abhi_AbhiAgain
  Scenario: Verify details and name of commit information shown in the application
    Given I have the application launched
    And I click commit list at github website
    When I navigate to see information about "Added analytics"
    Then I check commit information "detail"
    And I check "who" did the changes
