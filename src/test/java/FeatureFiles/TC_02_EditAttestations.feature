Feature: Attestations functionality

  Background:

    Given Navigate to Campus
    When Login username and Password and click login button
    Then User should login successfully

  Scenario: Edit Attestations
    And Click on the element in leftNav
      | humanResources |
      | setupHuman     |
      | attestations   |



    And user sending the keys in Dialogcontent
      |searchInput| violette15|

    And Click on the element in Dialogcontent
      |searchBttn|
      |editButton|


    And user sending the keys in Dialogcontent
      |nameInput| violette13|

    And Click on the element in Dialogcontent
      |saveButton|
