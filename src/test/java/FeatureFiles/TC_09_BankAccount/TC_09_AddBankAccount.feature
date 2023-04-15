Feature: Bank account functionality
  Background:
    Given Navigate to Campus
    When Login username and Password and click login button
    Then User should login successfully

    And Click on the element in leftNav
      |setup|
      |parameters|
      |bankAccounts|

  Scenario: Create new bank accounts

    Then Click on the element in Dialogcontent
      |addButton|

    When user sending the keys in Dialogcontent nine
      |nameInput| violette|
      |ibanInput| 12345|

    And Click on the element in Dialogcontent nine
      |currency|
      |selectEur |

    And user sending the keys in Dialogcontent nine
      |integrationCode| 246|

    And Click on the element in Dialogcontent nine
      |saveButton|

    Then Success message should be displayed nine


  Scenario: Negative Test

    Then Click on the element in Dialogcontent
      |addButton|

    When user sending the keys in Dialogcontent nine
      |nameInput| violette|
      |ibanInput| 12345|

    And Click on the element in Dialogcontent nine
      |currency|
      |selectEur |

    And user sending the keys in Dialogcontent nine
      |integrationCode| 246|

    And Click on the element in Dialogcontent nine
      |saveButton|

    Then Already exist message should be displayed nine

