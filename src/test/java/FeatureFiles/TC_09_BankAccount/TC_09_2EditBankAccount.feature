Feature: Bank account functionality
  Background:
    Given Navigate to Campus
    When Login username and Password and click login button
    Then User should login successfully

    And Click on the element in leftNav
      |setup|
      |parameters|
      |bankAccounts|

  Scenario: Edit bank accounts
    And user sending the keys in Dialogcontent nine
      |searchInput| 1violette|

    And Click on the element in Dialogcontent nine
      |searchBttn|

    And Click on the element in Dialogcontent nine
      |editButton|

    And user sending the keys in Dialogcontent nine
      |nameInput| 2violette|

    And Click on the element in Dialogcontent nine
      |saveButton|

    