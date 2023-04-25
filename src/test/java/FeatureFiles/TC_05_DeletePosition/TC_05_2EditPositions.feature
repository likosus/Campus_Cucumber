Feature: TC_05_EDİT

  Background:

    Given Navigate to Campus
    When Login username and Password and click login button
    Then User should login successfully

    And Click on the element in leftNav
      | humanResources |
      | setupHuman     |
      | positions |

  Scenario: Edit Positions

    And user sending the keys in Dialogcontent
      |searchInput| deva|


    And Click on the element in Dialogcontent
      |searchBttn|

    And click the edit buttonPositions


    And user sending the keys in Dialogcontent
      |nameInput| deva2|

    And Click on the element in Dialogcontent
      |saveButton|