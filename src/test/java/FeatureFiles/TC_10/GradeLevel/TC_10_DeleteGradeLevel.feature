Feature: grade level functionality

  Background:

    Given Navigate to Campus
    When Login username and Password and click login button
    Then User should login successfully

    And Click on the element in leftNav
      | setup |
      | parameters     |
      | gradeLevels   |


  Scenario:Delete gradeLavels

    When Click on the element in Dialogcontent
    |deleteImageBtn|

    | deleteDialogBtn |


    Then Success message should be displayed

  Scenario: Negative test


    Then user sending the keys in Dialogcontent
      |searchInput|Aci yok Rocky|


    And Click on the element in Dialogcontent
      |searchBttn|


    Then is no data message should be displayed
