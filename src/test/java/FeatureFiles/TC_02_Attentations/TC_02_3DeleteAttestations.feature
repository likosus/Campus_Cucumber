Feature: TC_02_DELETE

  Background:

    Given Navigate to Campus
    When Login username and Password and click login button
    Then User should login successfully

    And Click on the element in leftNav
      | humanResources |
      | setupHuman     |
      | attestations   |


  Scenario:Delete Attestations

    Then user Delete item in Dialogcontent
      | violette27 |

    Then Success message should be displayed


  Scenario: Negative test


    Then user sending the keys in Dialogcontent
      | searchInput | violette27 |


    And Click on the element in Dialogcontent
      | searchBttn |


    Then is no data message should be displayed
