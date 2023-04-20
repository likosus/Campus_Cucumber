Feature: Attestations functionality

  Background:

    Given Navigate to Campus
    When Login username and Password and click login button
    Then User should login successfully

    And Click on the element in leftNav
      | setup       |
      | schoolSetup |
      | departments |


  Scenario:Delete schoolSetup

    Then Click on the element in Dialogcontent
      | kadirdeleteButton |
      | deleteButton3 |


    Then School Department successfully deleted
