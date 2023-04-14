Feature: Attestations functionality

  Background:

    Given Navigate to Campus
    When Login username and Password and click login button
    Then User should login successfully

    And Click on the element in leftNav
      | humanResources |
      | setupHuman     |
      | positionCategories   |


  Scenario:Delete Attestations

 Then user Delete item in Dialogcontent
   | kadirCaglar|

    Then Success message should be displayed
