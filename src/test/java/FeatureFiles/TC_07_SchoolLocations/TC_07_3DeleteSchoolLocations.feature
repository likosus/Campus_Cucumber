Feature:TC_07_DELETE

  Background:

    Given Navigate to Campus
    When Login username and Password and click login button
    Then User should login successfully


    And Click on the element in leftNav
      | setup       |
      | schoolSetup |
      | locations   |

  Scenario:Delete Locations

    Then user Delete item in Dialogcontent Alper
      | alperyeni |

    Then Success message should be displayed
