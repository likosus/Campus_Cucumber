Feature: Discounts

  Background:

    Given Navigate to Campus
    When Login username and Password and click login button
    Then User should login successfully

    And Click on the element in leftNav
      | setup|
      | parameters  |
      | discounts  |


  Scenario:Delete Discounts

    Then user Delete discounts


  # When Click TAP and return main


    Then Success message should be displayed

  Scenario: Negative test


    Then user sending the keys in Dialogcontent
      |description2|deva2|


    And Click on the element in Dialogcontent
      |searchBttn|


    Then is no data message should be displayed

