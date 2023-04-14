Feature: document type functionality

  Background:

    Given Navigate to Campus
    When Login username and Password and click login button
    Then User should login successfully

    And Click on the element in leftNav
      | setup |
      | parameters     |
      | documentTypes   |


    Scenario:Delete document type

    Then user Delete item in Dialogcontent
      | Aci yok Rocky|

    Then Success message should be displayed
