Feature: document type functionality

  Background:

    Given Navigate to Campus
    When Login username and Password and click login button
    Then User should login successfully

    And Click on the element in leftNav
      | setup |
      | parameters     |
      | documentTypes   |


    Scenario:Delete document type

    Then user Delete item in Dialogcontent
      | Aci var Rocky|

    Then Success message should be displayed

  Scenario: Negative test


    Then user sending the keys in Dialogcontent
      |searchInput|Aci var Rocky|


    And Click on the element in Dialogcontent
      |searchBttn|


    Then is no data message should be displayed
