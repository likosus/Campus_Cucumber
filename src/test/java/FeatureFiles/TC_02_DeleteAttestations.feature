Feature: Attestations functionality

  Background:

    Given Navigate to Campus
    When Login username and Password and click login button
    Then User should login successfully

  Scenario:Delete Attestations
    And Click on the element in leftNav
      | humanResources |
      | setupHuman     |
      | attestations   |


 Then user Delete item in Dialogcontent
   | violette15|

    Then Success message should be displayed
