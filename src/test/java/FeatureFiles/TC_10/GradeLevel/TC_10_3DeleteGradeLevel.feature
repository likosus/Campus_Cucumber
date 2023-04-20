Feature: grade level functionality

  Background:

    Given Navigate to Campus
    When Login username and Password and click login button
    Then User should login successfully

    And Click on the element in leftNav
      | setup       |
      | parameters  |
      | gradeLevels |


  Scenario:Delete gradeLavels

    When Click on the element in Dialogcontent
      | likosDelete  |
      | deleteDialogBtn |


    Then Success message should be displayed

