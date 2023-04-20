Feature: Subject Category

  Background:

    Given Navigate to Campus
    When Login username and Password and click login button
    Then User should login successfully

    And Click on the element in leftNav
      | education         |
      | educationSetup    |
      | subjectCategories |

  Scenario: Edit subjectCategories

    And user sending the keys in Dialogcontent
      | searchInput | Fatih42 |


    And Click on the element in Dialogcontent
      | searchBttn |

    And Click on the element in Dialogcontent
      | editButton |


    And user sending the keys in Dialogcontent
      | nameInput | fatihSultan |
    #|integrationCode| enes13|

    And Click on the element in Dialogcontent
      | saveButton |