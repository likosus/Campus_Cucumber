Feature: Attestations functionality

  Background:

    Given Navigate to Campus
    When Login username and Password and click login button
    Then User should login successfully

    And Click on the element in leftNav
      | humanResources |
      | setupHuman     |
      | attestations   |

  Scenario: Edit Attestations

    And user sending the keys in Dialogcontent
      |searchInput| violette17|

    And Click on the element in Dialogcontent
      |searchBttn|

    And Click on the element in Dialogcontent
      |rumeysaEdit|

    And user sending the keys in Dialogcontent
      |nameInput| violette13|

    And Click on the element in Dialogcontent
      |saveButton|
