Feature:TC_12_EDİT

  Background:

    Given Navigate to Campus
    When Login username and Password and click login button
    Then User should login successfully


    And Click on the element in leftNav
      | setup         |
      | parameters    |
      | nationalities |

  Scenario: Edit Nationalities

    And user sending the keys in Dialogcontent
      | searchInput | alperistanli |

    And Click on the element in Dialogcontent
      | searchBttn |

    And Click the edit button

    And user sending the keys in Dialogcontent
      | nameInput | alperistanliyok |

    And Click on the element in Dialogcontent
      | saveButton |