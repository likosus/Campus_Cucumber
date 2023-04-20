Feature: Attestations functionality

  Background:

    Given Navigate to Campus
    When Login username and Password and click login button
    Then User should login successfully

    And Click on the element in leftNav
      | humanResources     |
      | setupHuman         |
      | positionCategories |


  Scenario:Delete HumanResources

    Then user Delete item in Dialogcontent
      | manager |

    Then Success message should be displayed


  Scenario: Negative test


    Then user sending the keys in Dialogcontent
      | searchInput | manager |


    And Click on the element in Dialogcontent
      | searchBttn |


    Then is no data message should be displayed
