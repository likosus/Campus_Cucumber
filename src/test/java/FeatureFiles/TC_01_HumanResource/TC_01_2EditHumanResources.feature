Feature: Attestations functionality

  Background:

    Given Navigate to Campus
    When Login username and Password and click login button
    Then User should login successfully

    And Click on the element in leftNav
      | humanResources     |
      | setupHuman         |
      | positionCategories |

  Scenario: Edit HumanResources

    And user sending the keys in Dialogcontent
      | searchInput | teacher |

    And Click on the element in Dialogcontent
      | searchBttn |

    And Click the edit button

    And user sending the keys in Dialogcontent
      | nameInput | manager |

    And Click on the element in Dialogcontent
      | saveButton |
