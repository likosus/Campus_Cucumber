Feature: Subject Category

  Background:

    Given Navigate to Campus
    When Login username and Password and click login button
    Then User should login successfully

    And Click on the element in leftNav
      | education         |
      | educationSetup    |
      | subjectCategories |


  Scenario:Delete subjectCategories

    Then user Delete item in Dialogcontent
      | fatihSultan |

    Then Success message should be displayed

  Scenario: Negative test


    Then user sending the keys in Dialogcontent
      | searchInput | fatihSultan |


    And Click on the element in Dialogcontent
      | searchBttn |


    Then is no data message should be displayed


