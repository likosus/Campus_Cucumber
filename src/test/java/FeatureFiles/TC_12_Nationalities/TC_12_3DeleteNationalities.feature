Feature:

  Background:

    Given Navigate to Campus
    When Login username and Password and click login button
    Then User should login successfully


    And Click on the element in leftNav
      | setup           |
      | parameters      |
      | nationalities   |

  Scenario:Delete Nationalities

    Then user Delete item in Dialogcontent
      | alperistanliyok |

    Then Success message should be displayed


  Scenario: Negative test


    Then user sending the keys in Dialogcontent
      |searchInput| alperistanliyok|


    And Click on the element in Dialogcontent
      |searchBttn|


    Then is no data message should be displayed