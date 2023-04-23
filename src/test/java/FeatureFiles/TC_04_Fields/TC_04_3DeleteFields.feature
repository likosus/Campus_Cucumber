Feature: fields functionality

  Background:

    Given Navigate to Campus
    When Login username and Password and click login button
    Then User should login successfully

    And Click on the element in leftNav
      | setup      |
      | parameters |
      | fields     |


  Scenario:Delete fields

    Then user Delete item in Dialogcontent
      | panter01 |

    Then Success message should be displayed

  Scenario: Negative test


    Then user sending the keys in Dialogcontent
      | searchInput | panter01 |


    And Click on the element in Dialogcontent
      | searchBttn |


    Then is no data message should be displayed
