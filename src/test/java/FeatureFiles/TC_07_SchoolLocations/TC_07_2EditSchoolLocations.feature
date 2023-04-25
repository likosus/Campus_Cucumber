Feature:TC_07_EDİT

  Background:

    Given Navigate to Campus
    When Login username and Password and click login button
    Then User should login successfully


    And Click on the element in leftNav
      | setup       |
      | schoolSetup |
      | locations   |

  Scenario: Edit Locations


    And Click on the element in Dialogcontent
      |editButtonAlper|


    And user sending the keys in Dialogcontent
      |nameInput| alperyeni|

    And Click on the element in Dialogcontent
      |saveButton|