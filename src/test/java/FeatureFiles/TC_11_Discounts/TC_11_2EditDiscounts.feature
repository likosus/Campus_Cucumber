Feature: Discounts

  Background:

    Given Navigate to Campus
    When Login username and Password and click login button
    Then User should login successfully

    And Click on the element in leftNav
      | setup |
      |parameters |
      | discounts  |

  Scenario: Edit Discounts

    And user sending the keys in Dialogcontent
      |description2| deva1|



    And Click on the element in Dialogcontent
      |searchBttn|
      |editButton|


    And user sending the keys in Dialogcontent
      |description2| deva2|
      |integrationCode| 1234|
      |priority       |4321|

    When Click TAP and return main

    And Click on the element in Dialogcontent
      |saveButton|

    Then Success message should be displayed
