Feature: Attestations functionality

  Background:

    Given Navigate to Campus
    When Login username and Password and click login button
    Then User should login successfully

    And Click on the element in leftNav
      | humanResources |
      | setupHuman     |
      | positionCategories |

  Scenario: Edit Attestations

    And user sending the keys in Dialogcontent
      |searchInput| caglar|

    And Click on the element in Dialogcontent
      |searchBttn|
      |editButton|


    And user sending the keys in Dialogcontent
      |nameInput| kadirCaglar|

    And Click on the element in Dialogcontent
      |saveButton|
