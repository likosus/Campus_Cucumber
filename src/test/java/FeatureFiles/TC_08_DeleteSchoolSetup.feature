Feature: Attestations functionality

  Background:

    Given Navigate to Campus
    When Login username and Password and click login button
    Then User should login successfully

    And Click on the element in leftNav
      | setup       |
      | schoolSetup |
      | departments |


  Scenario:Delete Attestations

    Then Click on the element in Dialogcontent
      | deleteButton2 |
      | deleteButton3 |


    Then School Department successfully deleted
