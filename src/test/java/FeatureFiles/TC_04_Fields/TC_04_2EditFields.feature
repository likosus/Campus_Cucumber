Feature: Fields functionality

  Background:

    Given Navigate to Campus
    When Login username and Password and click login button
    Then User should login successfully

    And Click on the element in leftNav
      | setup         |
      | parameters    |
      | fields |

  Scenario: Edit Fields

    And user sending the keys in Dialogcontent
      | searchInput | panter |

    And Click on the element in Dialogcontent
      | searchBttn |

    And click the edit fieldsButton

    And user sending the keys in Dialogcontent
      | nameInput | panter01 |

    And Click on the element in Dialogcontent
      | saveButton |
